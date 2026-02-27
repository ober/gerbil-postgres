(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/cursor::timestamp 1772159950)
  (begin
    (define jafourni/gerbil-postgres/cursor#call-with-cursor
      (lambda (_%conn2533%_
               _%name2534%_
               _%sql2535%_
               _%args2536%_
               _%fetch-size2537%_
               _%thunk2538%_)
        (let* ((_%cursor-name2540%_
                (if (symbol? _%name2534%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%name2534%_))
                    _%name2534%_))
               (__tmp6119
                (lambda ()
                  (apply std/db/dbi#sql-eval
                         _%conn2533%_
                         (string-append
                          '"DECLARE "
                          _%cursor-name2540%_
                          '" CURSOR FOR "
                          _%sql2535%_)
                         _%args2536%_)
                  (let ((__tmp6123
                         (lambda ()
                           (_%thunk2538%_
                            (lambda ()
                              (let ((__tmp6124
                                     (string-append
                                      '"FETCH "
                                      (number->string _%fetch-size2537%_)
                                      '" FROM "
                                      _%cursor-name2540%_)))
                                (declare (not safe))
                                (std/db/dbi#sql-eval-query
                                 _%conn2533%_
                                 __tmp6124))))))
                        (__tmp6120
                         (lambda ()
                           (let ((__tmp6121
                                  (lambda ()
                                    (let ((__tmp6122
                                           (string-append
                                            '"CLOSE "
                                            _%cursor-name2540%_)))
                                      (declare (not safe))
                                      (std/db/dbi#sql-eval
                                       _%conn2533%_
                                       __tmp6122)))))
                             (declare (not safe))
                             (__with-catch void __tmp6121)))))
                    (declare (not safe))
                    (__with-unwind-protect __tmp6123 __tmp6120)))))
          (declare (not safe))
          (jafourni/gerbil-postgres/transactions#call-with-transaction__%
           '#f
           absent-value
           absent-value
           _%conn2533%_
           __tmp6119))))
    (define jafourni/gerbil-postgres/cursor#in-pg-cursor__%__%
      (lambda (_%@@keywords2477%_
               _%fetch-size24732478%_
               _%conn2480%_
               _%sql2481%_
               _%args2482%_)
        (let ((_%fetch-size2484%_
               (if (eq? _%fetch-size24732478%_ absent-value)
                   '1000
                   _%fetch-size24732478%_)))
          (letrec* ((_%cursor-name2486%_
                     (let ((__tmp6125
                            (let ((__tmp6126 (random-integer '1000000)))
                              (declare (not safe))
                              (##number->string __tmp6126))))
                       (declare (not safe))
                       (##string-append '"_pgcursor_" __tmp6125)))
                    (_%buffer2487%_ '())
                    (_%done?2488%_ '#f)
                    (_g6127_ (let ((_g6128_ (apply std/db/dbi#sql-eval
                                                   _%conn2480%_
                                                   (string-append
                                                    '"DECLARE "
                                                    _%cursor-name2486%_
                                                    '" CURSOR FOR "
                                                    _%sql2481%_)
                                                   _%args2482%_)))
                               #!void
                               _g6128_))
                    (_%fetch-batch!2489%_
                     (lambda ()
                       (let ((_%rows2501%_
                              (let ((__tmp6130
                                     (let ((__tmp6131
                                            (number->string
                                             _%fetch-size2484%_)))
                                       (declare (not safe))
                                       (##string-append
                                        '"FETCH "
                                        __tmp6131
                                        '" FROM "
                                        _%cursor-name2486%_))))
                                (declare (not safe))
                                (std/db/dbi#sql-eval-query
                                 _%conn2480%_
                                 __tmp6130))))
                         (if (null? _%rows2501%_)
                             (begin
                               (set! _%done?2488%_ '#t)
                               (let ((__tmp6132
                                      (lambda ()
                                        (let ((__tmp6133
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-append
                                                  '"CLOSE "
                                                  _%cursor-name2486%_))))
                                          (declare (not safe))
                                          (std/db/dbi#sql-eval
                                           _%conn2480%_
                                           __tmp6133)))))
                                 (declare (not safe))
                                 (__with-catch void __tmp6132)))
                             (set! _%buffer2487%_ _%rows2501%_))))))
            (begin
              (_%fetch-batch!2489%_)
              (let ((__obj6118
                     (let ()
                       (declare (not safe))
                       (##structure std/iter#iterator::t '#f '#f '#f))))
                (let ((__tmp6137
                       (lambda (_%it2491%_)
                         (if (null? _%buffer2487%_)
                             (if _%done?2488%_
                                 std/iter#iter-end
                                 (begin
                                   (_%fetch-batch!2489%_)
                                   std/iter#iter-end))
                             (let ((_%row2495%_ (car _%buffer2487%_)))
                               (set! _%buffer2487%_ (cdr _%buffer2487%_))
                               _%row2495%_))))
                      (__tmp6134
                       (lambda (_%it2497%_)
                         (if _%done?2488%_
                             '#!void
                             (begin
                               (set! _%done?2488%_ '#t)
                               (let ((__tmp6135
                                      (lambda ()
                                        (let ((__tmp6136
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-append
                                                  '"CLOSE "
                                                  _%cursor-name2486%_))))
                                          (declare (not safe))
                                          (std/db/dbi#sql-eval
                                           _%conn2480%_
                                           __tmp6136)))))
                                 (declare (not safe))
                                 (__with-catch void __tmp6135)))))))
                  (declare (not safe))
                  (std/iter#iterator:::init!__%
                   __obj6118
                   '#f
                   __tmp6137
                   __tmp6134))
                __obj6118))))))
    (define jafourni/gerbil-postgres/cursor#in-pg-cursor__%__0
      (lambda (_%@@keywords2507%_
               _%fetch-size24732508%_
               _%conn2509%_
               _%sql2510%_)
        (let ((_%args2512%_ '()))
          (jafourni/gerbil-postgres/cursor#in-pg-cursor__%__%
           _%@@keywords2507%_
           _%fetch-size24732508%_
           _%conn2509%_
           _%sql2510%_
           _%args2512%_))))
    (define jafourni/gerbil-postgres/cursor#in-pg-cursor__%
      (lambda _g6138_
        (let ((_g6139_ (let () (declare (not safe)) (##length _g6138_))))
          (cond ((let () (declare (not safe)) (##fx= _g6139_ 4))
                 (apply jafourni/gerbil-postgres/cursor#in-pg-cursor__%__0
                        _g6138_))
                ((let () (declare (not safe)) (##fx= _g6139_ 5))
                 (apply jafourni/gerbil-postgres/cursor#in-pg-cursor__%__%
                        _g6138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  jafourni/gerbil-postgres/cursor#in-pg-cursor__%
                  _g6138_))))))
    (define jafourni/gerbil-postgres/cursor#in-pg-cursor__@
      (lambda (_%@@keywords2523%_ . _%args2524%_)
        (apply jafourni/gerbil-postgres/cursor#in-pg-cursor__%
               _%@@keywords2523%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2523%_
                  'fetch-size:
                  absent-value))
               _%args2524%_)))
    (define jafourni/gerbil-postgres/cursor#in-pg-cursor
      (lambda _%args24742530%_
        (apply keyword-dispatch
               '#(fetch-size:)
               jafourni/gerbil-postgres/cursor#in-pg-cursor__@
               _%args24742530%_)))))
