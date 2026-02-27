;;; -*- Gerbil -*-
;;; Safe SQL composition and named parameters

(import :std/sugar)
(export sql-identifier
        sql-named
        sql-where
        sql-insert
        sql-update)

;;; --- Safe identifier quoting ---

(def (sql-identifier name)
  (string-append "\"" (pg-escape-identifier name) "\""))

(def (pg-escape-identifier name)
  (let (out (open-output-string))
    (let lp ((i 0))
      (when (< i (string-length name))
        (let (c (string-ref name i))
          (when (char=? c #\")
            (write-char #\" out))
          (write-char c out)
          (lp (+ i 1)))))
    (get-output-string out)))

;;; --- Named parameter expansion ---
;;; (sql-named "SELECT * FROM users WHERE name = :name AND age > :age"
;;;            name: "Alice" age: 25)
;;; → (values "SELECT * FROM users WHERE name = $1 AND age > $2" ["Alice" 25])

(def (sql-named template . kwargs)
  (let* ((kw-alist (kwargs->alist kwargs))
         (seen (make-hash-table))
         (params [])
         (param-count 0)
         (len (string-length template))
         (out (open-output-string)))
    (let lp ((i 0))
      (cond
       ((>= i len)
        (values (get-output-string out) (reverse params)))
       ;; Check for :name pattern
       ((and (char=? (string-ref template i) #\:)
             (< (+ i 1) len)
             (name-start-char? (string-ref template (+ i 1))))
        (let-values (((name end) (scan-name template (+ i 1))))
          (let* ((sym (string->symbol name))
                 (pair (assq sym kw-alist)))
            (unless pair
              (error "Named parameter not provided" name))
            (cond
             ((hash-get seen name)
              => (lambda (idx)
                   (write-string (string-append "$" (number->string idx)) out)))
             (else
              (set! param-count (+ param-count 1))
              (hash-put! seen name param-count)
              (set! params (cons (cdr pair) params))
              (write-string (string-append "$" (number->string param-count)) out)))
            (lp end))))
       ;; Check for :: (PostgreSQL cast) — don't treat as parameter
       ((and (char=? (string-ref template i) #\:)
             (< (+ i 1) len)
             (char=? (string-ref template (+ i 1)) #\:))
        (write-char #\: out)
        (write-char #\: out)
        (lp (+ i 2)))
       (else
        (write-char (string-ref template i) out)
        (lp (+ i 1)))))))

(def (name-start-char? c)
  (or (char-alphabetic? c) (char=? c #\_)))

(def (name-char? c)
  (or (char-alphabetic? c) (char-numeric? c) (char=? c #\_)))

(def (scan-name str start)
  (let lp ((i start))
    (if (or (>= i (string-length str))
            (not (name-char? (string-ref str i))))
      (values (substring str start i) i)
      (lp (+ i 1)))))

;; Convert keyword args list to alist: (name: "Alice" age: 25) → ((name . "Alice") (age . 25))
(def (kwargs->alist kwargs)
  (let lp ((rest kwargs) (result []))
    (if (or (null? rest) (null? (cdr rest)))
      (reverse result)
      (let* ((kw (car rest))
             (val (cadr rest))
             (name (if (keyword? kw)
                     (keyword->string kw)
                     (error "Expected keyword argument" kw))))
        (lp (cddr rest) (cons (cons (string->symbol name) val) result))))))

;;; --- WHERE clause builder ---
;;; (sql-where [["name = $" "Alice"] ["age > $" 25]])
;;; → (values "name = $1 AND age > $2" ["Alice" 25])

(def (sql-where clauses)
  (if (null? clauses)
    (values "TRUE" [])
    (let lp ((rest clauses) (sql-parts []) (params []) (idx 1))
      (if (null? rest)
        (values (string-join (reverse sql-parts) " AND ") (reverse params))
        (let (clause (car rest))
          (let* ((tmpl (car clause))
                 (val (cadr clause))
                 (sql (string-append tmpl (number->string idx))))
            (lp (cdr rest)
                (cons sql sql-parts)
                (cons val params)
                (+ idx 1))))))))

(def (string-join strs sep)
  (if (null? strs) ""
    (let lp ((rest (cdr strs)) (result (car strs)))
      (if (null? rest) result
        (lp (cdr rest) (string-append result sep (car rest)))))))

;;; --- INSERT helper ---
;;; (sql-insert "users" ["name" "age"] ["Alice" 30])
;;; → (values "INSERT INTO \"users\" (\"name\", \"age\") VALUES ($1, $2)" ["Alice" 30])

(def (sql-insert table columns vals)
  (let* ((quoted-table (sql-identifier table))
         (quoted-cols (map sql-identifier columns))
         (col-str (string-join quoted-cols ", "))
         (placeholders
          (let lp ((i 1) (acc []))
            (if (> i (length columns))
              (reverse acc)
              (lp (+ i 1) (cons (string-append "$" (number->string i)) acc)))))
         (val-str (string-join placeholders ", "))
         (sql (string-append "INSERT INTO " quoted-table
                             " (" col-str ") VALUES (" val-str ")")))
    (values sql vals)))

;;; --- UPDATE helper ---
;;; (sql-update "users" [["name" "Bob"]] [["id = $" 1]])
;;; → (values "UPDATE \"users\" SET \"name\" = $1 WHERE id = $2" ["Bob" 1])

(def (sql-update table sets wheres)
  (let* ((quoted-table (sql-identifier table)))
    ;; Build SET clauses
    (let lp ((rest sets) (set-parts []) (params []) (idx 1))
      (if (null? rest)
        ;; Build WHERE clauses
        (let lp2 ((rest2 wheres) (where-parts []) (params2 params) (idx2 idx))
          (if (null? rest2)
            (let* ((set-str (string-join (reverse set-parts) ", "))
                   (where-str (if (null? where-parts)
                                "TRUE"
                                (string-join (reverse where-parts) " AND ")))
                   (sql (string-append "UPDATE " quoted-table
                                       " SET " set-str
                                       " WHERE " where-str)))
              (values sql (reverse params2)))
            (let* ((clause (car rest2))
                   (tmpl (car clause))
                   (val (cadr clause))
                   (sql-part (string-append tmpl (number->string idx2))))
              (lp2 (cdr rest2)
                   (cons sql-part where-parts)
                   (cons val params2)
                   (+ idx2 1)))))
        (let* ((set-pair (car rest))
               (col (car set-pair))
               (val (cadr set-pair))
               (sql-part (string-append (sql-identifier col) " = $" (number->string idx))))
          (lp (cdr rest)
              (cons sql-part set-parts)
              (cons val params)
              (+ idx 1)))))))
