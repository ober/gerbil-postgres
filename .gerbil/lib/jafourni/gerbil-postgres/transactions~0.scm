(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/transactions::timestamp 1772159949)
  (begin
    (define jafourni/gerbil-postgres/transactions#call-with-transaction__%
      (lambda (_%@@keywords2087%_
               _%isolation20832088%_
               _%read-only20842090%_
               _%conn2092%_
               _%thunk2093%_)
        (let* ((_%isolation2095%_
                (if (eq? _%isolation20832088%_ absent-value)
                    '#f
                    _%isolation20832088%_))
               (_%read-only2097%_
                (if (eq? _%read-only20842090%_ absent-value)
                    '#f
                    _%read-only20842090%_))
               (_%begin-sql2102%_
                (let ((__tmp5992
                       (if _%isolation2095%_
                           (string-append
                            '" ISOLATION LEVEL "
                            (let ((_%$e2099%_ _%isolation2095%_))
                              (if (eq? 'read-committed _%$e2099%_)
                                  '"READ COMMITTED"
                                  (if (eq? 'repeatable-read _%$e2099%_)
                                      '"REPEATABLE READ"
                                      (if (eq? 'serializable _%$e2099%_)
                                          '"SERIALIZABLE"
                                          (if (eq? 'read-uncommitted
                                                   _%$e2099%_)
                                              '"READ UNCOMMITTED"
                                              (let ()
                                                (declare (not safe))
                                                (error '"Invalid isolation level"
                                                       _%isolation2095%_))))))))
                           '""))
                      (__tmp5991 (if _%read-only2097%_ '" READ ONLY" '"")))
                  (declare (not safe))
                  (##string-append '"BEGIN" __tmp5992 __tmp5991))))
          (let ()
            (declare (not safe))
            (std/db/dbi#sql-eval _%conn2092%_ _%begin-sql2102%_))
          (let ((__tmp5994
                 (lambda (_%e2104%_)
                   (let ((__tmp5995
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (std/db/dbi#sql-eval
                               _%conn2092%_
                               '"ROLLBACK")))))
                     (declare (not safe))
                     (__with-catch void __tmp5995))
                   (let () (declare (not safe)) (raise _%e2104%_))))
                (__tmp5993
                 (lambda ()
                   (let ((_%result2108%_ (_%thunk2093%_)))
                     (let ()
                       (declare (not safe))
                       (std/db/dbi#sql-eval _%conn2092%_ '"COMMIT"))
                     _%result2108%_))))
            (declare (not safe))
            (__with-catch __tmp5994 __tmp5993)))))
    (define jafourni/gerbil-postgres/transactions#call-with-transaction__@
      (lambda (_%@@keywords2113%_ . _%args2114%_)
        (apply jafourni/gerbil-postgres/transactions#call-with-transaction__%
               _%@@keywords2113%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2113%_
                  'isolation:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2113%_
                  'read-only:
                  absent-value))
               _%args2114%_)))
    (define jafourni/gerbil-postgres/transactions#call-with-transaction
      (lambda _%args20852120%_
        (apply keyword-dispatch
               '#(read-only: isolation:)
               jafourni/gerbil-postgres/transactions#call-with-transaction__@
               _%args20852120%_)))
    (define jafourni/gerbil-postgres/transactions#pg-savepoint
      (lambda (_%conn2070%_ _%name2071%_ _%thunk2072%_)
        (let ((_%sp-name2074%_
               (if (symbol? _%name2071%_)
                   (let ()
                     (declare (not safe))
                     (##symbol->string _%name2071%_))
                   _%name2071%_)))
          (let ((__tmp5996 (string-append '"SAVEPOINT " _%sp-name2074%_)))
            (declare (not safe))
            (std/db/dbi#sql-eval _%conn2070%_ __tmp5996))
          (let ((__tmp5999
                 (lambda (_%e2076%_)
                   (let ((__tmp6000
                          (lambda ()
                            (let ((__tmp6001
                                   (string-append
                                    '"ROLLBACK TO SAVEPOINT "
                                    _%sp-name2074%_)))
                              (declare (not safe))
                              (std/db/dbi#sql-eval _%conn2070%_ __tmp6001)))))
                     (declare (not safe))
                     (__with-catch void __tmp6000))
                   (let () (declare (not safe)) (raise _%e2076%_))))
                (__tmp5997
                 (lambda ()
                   (let ((_%result2080%_ (_%thunk2072%_)))
                     (let ((__tmp5998
                            (string-append
                             '"RELEASE SAVEPOINT "
                             _%sp-name2074%_)))
                       (declare (not safe))
                       (std/db/dbi#sql-eval _%conn2070%_ __tmp5998))
                     _%result2080%_))))
            (declare (not safe))
            (__with-catch __tmp5999 __tmp5997)))))
    (define jafourni/gerbil-postgres/transactions#call-with-serializable-retry__%
      (lambda (_%@@keywords2031%_
               _%max-retries20272032%_
               _%base-delay20282034%_
               _%conn2036%_
               _%thunk2037%_)
        (let* ((_%max-retries2039%_
                (if (eq? _%max-retries20272032%_ absent-value)
                    '3
                    _%max-retries20272032%_))
               (_%base-delay2041%_
                (if (eq? _%base-delay20282034%_ absent-value)
                    '.01
                    _%base-delay20282034%_)))
          (let _%lp2043%_ ((_%attempt2045%_ '0))
            (let ((__tmp6003
                   (lambda (_%e2047%_)
                     (if (and (< _%attempt2045%_ _%max-retries2039%_)
                              (let ()
                                (declare (not safe))
                                (jafourni/gerbil-postgres/errors#pg-serialization-failure?
                                 _%e2047%_)))
                         (let* ((_%delay2049%_
                                 (* _%base-delay2041%_
                                    (expt '2 _%attempt2045%_)))
                                (_%jitter2051%_ (+ '.5 (random-real)))
                                (_%actual-delay2053%_
                                 (* _%delay2049%_ _%jitter2051%_)))
                           (let ((__tmp6004 (+ _%attempt2045%_ '1)))
                             (declare (not safe))
                             (jafourni/gerbil-postgres/logging#debugf
                              '"serialization failure, retrying (~a/~a)"
                              __tmp6004
                              _%max-retries2039%_))
                           (thread-sleep! _%actual-delay2053%_)
                           (_%lp2043%_ (+ _%attempt2045%_ '1)))
                         (let () (declare (not safe)) (raise _%e2047%_)))))
                  (__tmp6002
                   (lambda ()
                     (jafourni/gerbil-postgres/transactions#call-with-transaction__%
                      '#f
                      'serializable
                      absent-value
                      _%conn2036%_
                      _%thunk2037%_))))
              (declare (not safe))
              (__with-catch __tmp6003 __tmp6002))))))
    (define jafourni/gerbil-postgres/transactions#call-with-serializable-retry__@
      (lambda (_%@@keywords2060%_ . _%args2061%_)
        (apply jafourni/gerbil-postgres/transactions#call-with-serializable-retry__%
               _%@@keywords2060%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2060%_
                  'max-retries:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2060%_
                  'base-delay:
                  absent-value))
               _%args2061%_)))
    (define jafourni/gerbil-postgres/transactions#call-with-serializable-retry
      (lambda _%args20292067%_
        (apply keyword-dispatch
               '#(#f #f #f #f #f base-delay: #f #f #f #f max-retries: #f #f)
               jafourni/gerbil-postgres/transactions#call-with-serializable-retry__@
               _%args20292067%_)))))
