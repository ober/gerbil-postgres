(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/retry::timestamp 1772159948)
  (begin
    (define jafourni/gerbil-postgres/retry#call-with-retry__%
      (lambda (_%@@keywords1257%_
               _%retryable?12501258%_
               _%max-retries12511260%_
               _%base-delay12521262%_
               _%max-delay12531264%_
               _%on-retry12541266%_
               _%thunk1268%_)
        (let* ((_%retryable?1270%_
                (if (eq? _%retryable?12501258%_ absent-value)
                    jafourni/gerbil-postgres/errors#pg-transient-error?
                    _%retryable?12501258%_))
               (_%max-retries1272%_
                (if (eq? _%max-retries12511260%_ absent-value)
                    '3
                    _%max-retries12511260%_))
               (_%base-delay1274%_
                (if (eq? _%base-delay12521262%_ absent-value)
                    '.1
                    _%base-delay12521262%_))
               (_%max-delay1276%_
                (if (eq? _%max-delay12531264%_ absent-value)
                    '5.
                    _%max-delay12531264%_))
               (_%on-retry1278%_
                (if (eq? _%on-retry12541266%_ absent-value)
                    '#f
                    _%on-retry12541266%_)))
          (let _%lp1280%_ ((_%attempt1282%_ '0))
            (let ((__tmp5859
                   (lambda (_%e1284%_)
                     (if (and (< _%attempt1282%_ _%max-retries1272%_)
                              (_%retryable?1270%_ _%e1284%_))
                         (let* ((_%delay1286%_
                                 (min _%max-delay1276%_
                                      (* _%base-delay1274%_
                                         (expt '2 _%attempt1282%_))))
                                (_%jitter1288%_ (+ '.5 (random-real)))
                                (_%actual-delay1290%_
                                 (* _%delay1286%_ _%jitter1288%_)))
                           (if _%on-retry1278%_
                               (_%on-retry1278%_
                                _%e1284%_
                                _%attempt1282%_
                                _%actual-delay1290%_)
                               '#!void)
                           (let ((__tmp5860 (+ _%attempt1282%_ '1)))
                             (declare (not safe))
                             (jafourni/gerbil-postgres/logging#debugf
                              '"retrying after ~as (attempt ~a/~a): ~a"
                              _%actual-delay1290%_
                              __tmp5860
                              _%max-retries1272%_
                              _%e1284%_))
                           (thread-sleep! _%actual-delay1290%_)
                           (_%lp1280%_ (+ _%attempt1282%_ '1)))
                         (let () (declare (not safe)) (raise _%e1284%_))))))
              (declare (not safe))
              (with-catch __tmp5859 _%thunk1268%_))))))
    (define jafourni/gerbil-postgres/retry#call-with-retry__@
      (lambda (_%@@keywords1296%_ . _%args1297%_)
        (apply jafourni/gerbil-postgres/retry#call-with-retry__%
               _%@@keywords1296%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords1296%_
                  'retryable?:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords1296%_
                  'max-retries:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords1296%_
                  'base-delay:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords1296%_
                  'max-delay:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords1296%_
                  'on-retry:
                  absent-value))
               _%args1297%_)))
    (define jafourni/gerbil-postgres/retry#call-with-retry
      (lambda _%args12551303%_
        (apply keyword-dispatch
               '#(#f
                  #f
                  retryable?:
                  #f
                  base-delay:
                  #f
                  #f
                  on-retry:
                  #f
                  #f
                  #f
                  #f
                  #f
                  max-delay:
                  #f
                  #f
                  #f
                  #f
                  #f
                  #f
                  max-retries:
                  #f)
               jafourni/gerbil-postgres/retry#call-with-retry__@
               _%args12551303%_)))))
