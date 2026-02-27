;;; -*- Gerbil -*-
;;; Transaction helpers for PostgreSQL

(import :std/db/dbi
        :std/sugar
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/logging)
(export call-with-transaction
        with-transaction
        pg-savepoint
        with-savepoint
        call-with-serializable-retry
        with-serializable-retry)

;;; --- Transaction implementation ---

(def (call-with-transaction conn thunk
       isolation: (isolation #f)
       read-only: (read-only #f))
  (let (begin-sql
        (string-append
         "BEGIN"
         (if isolation
           (string-append " ISOLATION LEVEL "
                          (case isolation
                            ((read-committed) "READ COMMITTED")
                            ((repeatable-read) "REPEATABLE READ")
                            ((serializable) "SERIALIZABLE")
                            ((read-uncommitted) "READ UNCOMMITTED")
                            (else (error "Invalid isolation level" isolation))))
           "")
         (if read-only " READ ONLY" "")))
    (sql-eval conn begin-sql)
    (with-catch
     (lambda (e)
       (with-catch void (lambda () (sql-eval conn "ROLLBACK")))
       (raise e))
     (lambda ()
       (let (result (thunk))
         (sql-eval conn "COMMIT")
         result)))))

;; Usage:
;;   (with-transaction conn body ...)
;;   (with-transaction conn (isolation: 'serializable) body ...)
;;   (with-transaction conn (read-only: #t) body ...)
;;   (with-transaction conn (isolation: 'serializable read-only: #t) body ...)
(defrules with-transaction ()
  ((_ conn (opts ...) body ...)
   (call-with-transaction conn (lambda () body ...) opts ...))
  ((_ conn body ...)
   (call-with-transaction conn (lambda () body ...))))

;;; --- Savepoints ---

(def (pg-savepoint conn name thunk)
  (let (sp-name (if (symbol? name) (symbol->string name) name))
    (sql-eval conn (string-append "SAVEPOINT " sp-name))
    (with-catch
     (lambda (e)
       (with-catch void
         (lambda () (sql-eval conn (string-append "ROLLBACK TO SAVEPOINT " sp-name))))
       (raise e))
     (lambda ()
       (let (result (thunk))
         (sql-eval conn (string-append "RELEASE SAVEPOINT " sp-name))
         result)))))

(defrule (with-savepoint conn name body ...)
  (pg-savepoint conn 'name (lambda () body ...)))

;;; --- Serializable retry ---

(def (call-with-serializable-retry conn thunk
       max-retries: (max-retries 3)
       base-delay: (base-delay 0.01))
  (let lp ((attempt 0))
    (with-catch
     (lambda (e)
       (if (and (< attempt max-retries)
                (pg-serialization-failure? e))
         (let* ((delay (* base-delay (expt 2 attempt)))
                (jitter (+ 0.5 (random-real)))
                (actual-delay (* delay jitter)))
           (debugf "serialization failure, retrying (~a/~a)" (+ attempt 1) max-retries)
           (thread-sleep! actual-delay)
           (lp (+ attempt 1)))
         (raise e)))
     (lambda ()
       (call-with-transaction conn thunk isolation: 'serializable)))))

(defrules with-serializable-retry ()
  ((_ conn (opts ...) body ...)
   (call-with-serializable-retry conn (lambda () body ...) opts ...))
  ((_ conn body ...)
   (call-with-serializable-retry conn (lambda () body ...))))
