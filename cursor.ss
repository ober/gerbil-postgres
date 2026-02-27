;;; -*- Gerbil -*-
;;; Server-side cursors for large result sets
;;;
;;; Uses SQL DECLARE CURSOR within a transaction (works over existing DBI).

(import :std/db/dbi
        :std/iter
        :std/sugar
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/logging
        :jafourni/gerbil-postgres/transactions)
(export call-with-cursor
        with-cursor
        in-pg-cursor)

;;; --- Cursor API ---

(def (call-with-cursor conn name sql args fetch-size thunk)
  (let (cursor-name (if (symbol? name) (symbol->string name) name))
    (call-with-transaction conn
      (lambda ()
        ;; Declare cursor
        (apply sql-eval conn
               (string-append "DECLARE " cursor-name " CURSOR FOR " sql)
               args)
        (try
          (thunk
           (lambda () ;; fetch-next: returns list of rows or [] when done
             (sql-eval-query
              conn
              (string-append "FETCH " (number->string fetch-size)
                             " FROM " cursor-name))))
          (finally
           (with-catch void
             (lambda ()
               (sql-eval conn (string-append "CLOSE " cursor-name))))))))))

(defrules with-cursor ()
  ((_ conn name sql (fetch-size: size) body ...)
   (call-with-cursor conn 'name sql [] size (lambda (fetch-next) body ...)))
  ((_ conn name sql body ...)
   (call-with-cursor conn 'name sql [] 1000 (lambda (fetch-next) body ...))))

;;; --- Iterator interface for :std/iter ---

(def (in-pg-cursor conn sql (args [])
       fetch-size: (fetch-size 1000))
  (def cursor-name (string-append "_pgcursor_" (number->string (random-integer 1000000))))
  (def buffer [])
  (def done? #f)

  ;; We need to be inside a transaction for cursors to work.
  ;; The caller must wrap in with-transaction or we begin one.
  (apply sql-eval conn
         (string-append "DECLARE " cursor-name " CURSOR FOR " sql)
         args)

  (def (fetch-batch!)
    (let (rows (sql-eval-query
                conn
                (string-append "FETCH " (number->string fetch-size)
                               " FROM " cursor-name)))
      (if (null? rows)
        (begin
          (set! done? #t)
          (with-catch void
            (lambda () (sql-eval conn (string-append "CLOSE " cursor-name)))))
        (set! buffer rows))))

  ;; Prefetch first batch
  (fetch-batch!)

  (make-iterator
   #f
   (lambda (it)
     (if (null? buffer)
       (if done?
         iter-end
         (begin (fetch-batch!)
                (if (null? buffer)
                  iter-end
                  (let (row (car buffer))
                    (set! buffer (cdr buffer))
                    row))))
       (let (row (car buffer))
         (set! buffer (cdr buffer))
         row)))
   (lambda (it)
     (unless done?
       (set! done? #t)
       (with-catch void
         (lambda () (sql-eval conn (string-append "CLOSE " cursor-name))))))))
