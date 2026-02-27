;;; -*- Gerbil -*-
;;; Schema migration runner for PostgreSQL
;;;
;;; Supports file-based migrations (001_name.up.sql / 001_name.down.sql)
;;; and programmatic migrations. Uses pg_advisory_lock for safety.

(import :std/db/dbi
        :std/sort
        :std/sugar
        :std/misc/ports
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/logging
        :jafourni/gerbil-postgres/transactions)
(export make-migration
        migration?
        migration-version
        migration-name
        migration-up-sql
        migration-down-sql
        migration-checksum
        load-migrations-from-directory
        migrator-open
        migrator?
        migrate-up!
        migrate-up-to!
        migrate-down!
        migration-status
        pending-migrations)

(defstruct migration (version name up-sql down-sql checksum)
  final: #t)

(defstruct migrator (conn migrations lock-id)
  final: #t)

;;; --- Load migrations from directory ---

(def (load-migrations-from-directory dir)
  (let* ((files (directory-files dir))
         (up-files (filter (lambda (f) (string-suffix? ".up.sql" f)) files))
         (migrations
          (map (lambda (up-file)
                 (let* ((base (substring up-file 0 (- (string-length up-file) 7)))
                        (down-file (string-append base ".down.sql"))
                        (version (parse-migration-version base))
                        (name (parse-migration-name base))
                        (up-sql (read-file-string (path-expand up-file dir)))
                        (down-sql (let (p (path-expand down-file dir))
                                    (if (file-exists? p)
                                      (read-file-string p)
                                      #f)))
                        (checksum (string-crc32 up-sql)))
                   (make-migration version name up-sql down-sql checksum)))
               up-files)))
    (sort migrations (lambda (a b) (< (migration-version a) (migration-version b))))))

(def (string-suffix? suffix str)
  (let ((slen (string-length suffix))
        (len (string-length str)))
    (and (>= len slen)
         (string=? (substring str (- len slen) len) suffix))))

(def (parse-migration-version base)
  (let lp ((i 0))
    (if (or (>= i (string-length base))
            (not (char-numeric? (string-ref base i))))
      (string->number (substring base 0 i))
      (lp (+ i 1)))))

(def (parse-migration-name base)
  (let ((idx (let lp ((i 0))
               (if (or (>= i (string-length base))
                       (char=? (string-ref base i) #\_))
                 (+ i 1)
                 (lp (+ i 1))))))
    (if (< idx (string-length base))
      (substring base idx (string-length base))
      base)))

;; Simple CRC32 for checksum (not crypto-grade, just change detection)
(def (string-crc32 str)
  (let lp ((i 0) (crc 0))
    (if (>= i (string-length str))
      (number->string (bitwise-and crc #xFFFFFFFF) 16)
      (lp (+ i 1)
          (bitwise-xor crc (char->integer (string-ref str i)))))))

;;; --- Migrator ---

(def +migration-lock-id+ 8675309) ;; arbitrary advisory lock ID

(def (migrator-open conn migrations-or-dir
       lock-timeout: (lock-timeout 30))
  (let (migrations
        (if (string? migrations-or-dir)
          (load-migrations-from-directory migrations-or-dir)
          migrations-or-dir))
    (ensure-migration-table! conn)
    (make-migrator conn migrations +migration-lock-id+)))

(def (ensure-migration-table! conn)
  (sql-eval conn
    "CREATE TABLE IF NOT EXISTS _migrations (
       version INTEGER PRIMARY KEY,
       name TEXT NOT NULL,
       applied_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
       checksum TEXT
     )"))

(def (with-advisory-lock conn lock-id thunk)
  (sql-eval conn (string-append "SELECT pg_advisory_lock(" (number->string lock-id) ")"))
  (try (thunk)
    (finally
     (with-catch void
       (lambda ()
         (sql-eval conn (string-append "SELECT pg_advisory_unlock(" (number->string lock-id) ")")))))))

;;; --- Migration operations ---

(def (applied-versions conn)
  (let (rows (sql-eval-query conn "SELECT version FROM _migrations ORDER BY version"))
    (map (lambda (row) (vector-ref row 0)) rows)))

(def (migrate-up! mgr)
  (let (pending (pending-migrations mgr))
    (with-advisory-lock (migrator-conn mgr) (migrator-lock-id mgr)
      (lambda ()
        (for-each (lambda (m) (apply-migration! mgr m)) pending)))
    (length pending)))

(def (migrate-up-to! mgr version)
  (let* ((pending (pending-migrations mgr))
         (to-apply (filter (lambda (m) (<= (migration-version m) version)) pending)))
    (with-advisory-lock (migrator-conn mgr) (migrator-lock-id mgr)
      (lambda ()
        (for-each (lambda (m) (apply-migration! mgr m)) to-apply)))
    (length to-apply)))

(def (migrate-down! mgr (n 1))
  (let* ((conn (migrator-conn mgr))
         (applied (reverse (applied-versions conn)))
         (to-rollback (take-up-to applied n))
         (all-migrations (migrator-migrations mgr)))
    (with-advisory-lock conn (migrator-lock-id mgr)
      (lambda ()
        (for-each
         (lambda (version)
           (let (m (find (lambda (m) (= (migration-version m) version)) all-migrations))
             (when m (rollback-migration! mgr m))))
         to-rollback)))
    (length to-rollback)))

(def (migration-status mgr)
  (let* ((conn (migrator-conn mgr))
         (applied (applied-versions conn)))
    (map (lambda (m)
           (hash (version (migration-version m))
                 (name (migration-name m))
                 (applied (member (migration-version m) applied))))
         (migrator-migrations mgr))))

(def (pending-migrations mgr)
  (let (applied (applied-versions (migrator-conn mgr)))
    (filter (lambda (m) (not (member (migration-version m) applied)))
            (migrator-migrations mgr))))

(def (apply-migration! mgr m)
  (let (conn (migrator-conn mgr))
    (infof "applying migration ~a: ~a" (migration-version m) (migration-name m))
    (call-with-transaction conn
      (lambda ()
        (sql-eval conn (migration-up-sql m))
        (sql-eval conn
          "INSERT INTO _migrations (version, name, checksum) VALUES ($1, $2, $3)"
          (migration-version m) (migration-name m) (migration-checksum m))))))

(def (rollback-migration! mgr m)
  (let (conn (migrator-conn mgr))
    (unless (migration-down-sql m)
      (error "No down migration for version" (migration-version m)))
    (infof "rolling back migration ~a: ~a" (migration-version m) (migration-name m))
    (call-with-transaction conn
      (lambda ()
        (sql-eval conn (migration-down-sql m))
        (sql-eval conn "DELETE FROM _migrations WHERE version = $1"
          (migration-version m))))))

(def (take-up-to lst n)
  (let lp ((rest lst) (n n) (acc []))
    (if (or (null? rest) (<= n 0))
      (reverse acc)
      (lp (cdr rest) (- n 1) (cons (car rest) acc)))))
