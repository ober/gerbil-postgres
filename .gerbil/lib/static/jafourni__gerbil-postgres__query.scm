(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/query::timestamp 1772159946)
  (begin
    (define jafourni/gerbil-postgres/query#sql-identifier
      (lambda (_%name698%_)
        (let ((__tmp5783
               (jafourni/gerbil-postgres/query#pg-escape-identifier
                _%name698%_)))
          (declare (not safe))
          (##string-append '"\"" __tmp5783 '"\""))))
    (define jafourni/gerbil-postgres/query#pg-escape-identifier
      (lambda (_%name688%_)
        (let ((_%out690%_ (open-output-string)))
          (let _%lp692%_ ((_%i694%_ '0))
            (if (< _%i694%_ (string-length _%name688%_))
                (let ((_%c696%_ (string-ref _%name688%_ _%i694%_)))
                  (if (let () (declare (not safe)) (##char=? _%c696%_ '#\"))
                      (write-char '#\" _%out690%_)
                      '#!void)
                  (write-char _%c696%_ _%out690%_)
                  (_%lp692%_ (+ _%i694%_ '1)))
                '#!void))
          (get-output-string _%out690%_))))
    (define jafourni/gerbil-postgres/query#sql-named
      (lambda (_%template650%_ . _%kwargs651%_)
        (let* ((_%kw-alist653%_
                (jafourni/gerbil-postgres/query#kwargs->alist _%kwargs651%_))
               (_%seen655%_
                (let ()
                  (declare (not safe))
                  (make-hash-table__%
                   '#f
                   absent-value
                   absent-value
                   absent-value
                   absent-value
                   absent-value
                   absent-value
                   absent-value
                   absent-value)))
               (_%params657%_ '())
               (_%param-count659%_ '0)
               (_%len661%_ (string-length _%template650%_))
               (_%out663%_ (open-output-string)))
          (let _%lp666%_ ((_%i668%_ '0))
            (if (>= _%i668%_ _%len661%_)
                (values (get-output-string _%out663%_)
                        (let ()
                          (declare (not safe))
                          (##reverse _%params657%_)))
                (if (and (let ((__tmp5784
                                (string-ref _%template650%_ _%i668%_)))
                           (declare (not safe))
                           (##char=? __tmp5784 '#\:))
                         (< (+ _%i668%_ '1) _%len661%_)
                         (jafourni/gerbil-postgres/query#name-start-char?
                          (string-ref _%template650%_ (+ _%i668%_ '1))))
                    (let ((_g5785_ (jafourni/gerbil-postgres/query#scan-name
                                    _%template650%_
                                    (+ _%i668%_ '1))))
                      (begin
                        (let ((_g5786_ (let ()
                                         (declare (not safe))
                                         (if (##values? _g5785_)
                                             (##values-length _g5785_)
                                             1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g5786_ 2)))
                              (error "Context expects 2 values" _g5786_)))
                        (let ((_%name672%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g5785_ 0)))
                              (_%end673%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g5785_ 1))))
                          (let* ((_%sym675%_ (string->symbol _%name672%_))
                                 (_%pair677%_
                                  (assq _%sym675%_ _%kw-alist653%_)))
                            (if _%pair677%_
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (error '"Named parameter not provided"
                                         _%name672%_)))
                            (let ((_%$e680%_
                                   (let ()
                                     (declare (not safe))
                                     (__hash-get _%seen655%_ _%name672%_))))
                              (if _%$e680%_
                                  ((lambda (_%idx683%_)
                                     (write-string
                                      (let ((__tmp5787
                                             (number->string _%idx683%_)))
                                        (declare (not safe))
                                        (##string-append '"$" __tmp5787))
                                      _%out663%_))
                                   _%$e680%_)
                                  (let ()
                                    (set! _%param-count659%_
                                          (+ _%param-count659%_ '1))
                                    (let ()
                                      (declare (not safe))
                                      (__hash-put!
                                       _%seen655%_
                                       _%name672%_
                                       _%param-count659%_))
                                    (set! _%params657%_
                                          (cons (cdr _%pair677%_)
                                                _%params657%_))
                                    (write-string
                                     (let ((__tmp5788
                                            (let ()
                                              (declare (not safe))
                                              (##number->string
                                               _%param-count659%_))))
                                       (declare (not safe))
                                       (##string-append '"$" __tmp5788))
                                     _%out663%_))))
                            (_%lp666%_ _%end673%_)))))
                    (if (and (let ((__tmp5789
                                    (string-ref _%template650%_ _%i668%_)))
                               (declare (not safe))
                               (##char=? __tmp5789 '#\:))
                             (< (+ _%i668%_ '1) _%len661%_)
                             (let ((__tmp5790
                                    (string-ref
                                     _%template650%_
                                     (+ _%i668%_ '1))))
                               (declare (not safe))
                               (##char=? __tmp5790 '#\:)))
                        (let ()
                          (write-char '#\: _%out663%_)
                          (write-char '#\: _%out663%_)
                          (_%lp666%_ (+ _%i668%_ '2)))
                        (let ()
                          (write-char
                           (string-ref _%template650%_ _%i668%_)
                           _%out663%_)
                          (_%lp666%_ (+ _%i668%_ '1))))))))))
    (define jafourni/gerbil-postgres/query#name-start-char?
      (lambda (_%c645%_)
        (let ((_%$e647%_ (char-alphabetic? _%c645%_)))
          (if _%$e647%_ _%$e647%_ (char=? _%c645%_ '#\_)))))
    (define jafourni/gerbil-postgres/query#name-char?
      (lambda (_%c637%_)
        (let ((_%$e639%_ (char-alphabetic? _%c637%_)))
          (if _%$e639%_
              _%$e639%_
              (let ((_%$e642%_ (char-numeric? _%c637%_)))
                (if _%$e642%_ _%$e642%_ (char=? _%c637%_ '#\_)))))))
    (define jafourni/gerbil-postgres/query#scan-name
      (lambda (_%str627%_ _%start628%_)
        (let _%lp630%_ ((_%i632%_ _%start628%_))
          (if (or (>= _%i632%_ (string-length _%str627%_))
                  (not (jafourni/gerbil-postgres/query#name-char?
                        (string-ref _%str627%_ _%i632%_))))
              (values (substring _%str627%_ _%start628%_ _%i632%_) _%i632%_)
              (_%lp630%_ (+ _%i632%_ '1))))))
    (define jafourni/gerbil-postgres/query#kwargs->alist
      (lambda (_%kwargs610%_)
        (let _%lp612%_ ((_%rest614%_ _%kwargs610%_) (_%result615%_ '()))
          (if (or (null? _%rest614%_) (null? (cdr _%rest614%_)))
              (reverse _%result615%_)
              (let* ((_%kw620%_ (car _%rest614%_))
                     (_%val622%_ (cadr _%rest614%_))
                     (_%name624%_
                      (if (keyword? _%kw620%_)
                          (let ()
                            (declare (not safe))
                            (##keyword->string _%kw620%_))
                          (let ()
                            (declare (not safe))
                            (error '"Expected keyword argument" _%kw620%_)))))
                (_%lp612%_
                 (cddr _%rest614%_)
                 (cons (cons (string->symbol _%name624%_) _%val622%_)
                       _%result615%_)))))))
    (define jafourni/gerbil-postgres/query#sql-where
      (lambda (_%clauses592%_)
        (if (null? _%clauses592%_)
            (values '"TRUE" '())
            (let _%lp594%_ ((_%rest596%_ _%clauses592%_)
                            (_%sql-parts597%_ '())
                            (_%params598%_ '())
                            (_%idx599%_ '1))
              (if (null? _%rest596%_)
                  (values (jafourni/gerbil-postgres/query#string-join
                           (reverse _%sql-parts597%_)
                           '" AND ")
                          (reverse _%params598%_))
                  (let* ((_%clause601%_ (car _%rest596%_))
                         (_%tmpl603%_ (car _%clause601%_))
                         (_%val605%_ (cadr _%clause601%_))
                         (_%sql607%_
                          (let ((__tmp5791 (number->string _%idx599%_)))
                            (declare (not safe))
                            (##string-append _%tmpl603%_ __tmp5791))))
                    (_%lp594%_
                     (cdr _%rest596%_)
                     (cons _%sql607%_ _%sql-parts597%_)
                     (cons _%val605%_ _%params598%_)
                     (+ _%idx599%_ '1))))))))
    (define jafourni/gerbil-postgres/query#string-join
      (lambda (_%strs584%_ _%sep585%_)
        (if (null? _%strs584%_)
            '""
            (let _%lp587%_ ((_%rest589%_ (cdr _%strs584%_))
                            (_%result590%_ (car _%strs584%_)))
              (if (null? _%rest589%_)
                  _%result590%_
                  (_%lp587%_
                   (cdr _%rest589%_)
                   (string-append
                    _%result590%_
                    _%sep585%_
                    (car _%rest589%_))))))))
    (define jafourni/gerbil-postgres/query#sql-insert
      (lambda (_%table562%_ _%columns563%_ _%vals564%_)
        (let* ((_%quoted-table566%_
                (jafourni/gerbil-postgres/query#sql-identifier _%table562%_))
               (_%quoted-cols568%_
                (map jafourni/gerbil-postgres/query#sql-identifier
                     _%columns563%_))
               (_%col-str570%_
                (jafourni/gerbil-postgres/query#string-join
                 _%quoted-cols568%_
                 '", "))
               (_%placeholders577%_
                (let _%lp572%_ ((_%i574%_ '1) (_%acc575%_ '()))
                  (if (> _%i574%_ (length _%columns563%_))
                      (reverse _%acc575%_)
                      (_%lp572%_
                       (+ _%i574%_ '1)
                       (cons (let ((__tmp5792 (number->string _%i574%_)))
                               (declare (not safe))
                               (##string-append '"$" __tmp5792))
                             _%acc575%_)))))
               (_%val-str579%_
                (jafourni/gerbil-postgres/query#string-join
                 _%placeholders577%_
                 '", "))
               (_%sql581%_
                (string-append
                 '"INSERT INTO "
                 _%quoted-table566%_
                 '" ("
                 _%col-str570%_
                 '") VALUES ("
                 _%val-str579%_
                 '")")))
          (values _%sql581%_ _%vals564%_))))
    (define jafourni/gerbil-postgres/query#sql-update
      (lambda (_%table516%_ _%sets517%_ _%wheres518%_)
        (let ((_%quoted-table520%_
               (jafourni/gerbil-postgres/query#sql-identifier _%table516%_)))
          (let _%lp523%_ ((_%rest525%_ _%sets517%_)
                          (_%set-parts526%_ '())
                          (_%params527%_ '())
                          (_%idx528%_ '1))
            (if (null? _%rest525%_)
                (let _%lp2530%_ ((_%rest2532%_ _%wheres518%_)
                                 (_%where-parts533%_ '())
                                 (_%params2534%_ _%params527%_)
                                 (_%idx2535%_ _%idx528%_))
                  (if (null? _%rest2532%_)
                      (let* ((_%set-str537%_
                              (jafourni/gerbil-postgres/query#string-join
                               (reverse _%set-parts526%_)
                               '", "))
                             (_%where-str539%_
                              (if (null? _%where-parts533%_)
                                  '"TRUE"
                                  (jafourni/gerbil-postgres/query#string-join
                                   (reverse _%where-parts533%_)
                                   '" AND ")))
                             (_%sql541%_
                              (string-append
                               '"UPDATE "
                               _%quoted-table520%_
                               '" SET "
                               _%set-str537%_
                               '" WHERE "
                               _%where-str539%_)))
                        (values _%sql541%_ (reverse _%params2534%_)))
                      (let* ((_%clause544%_ (car _%rest2532%_))
                             (_%tmpl546%_ (car _%clause544%_))
                             (_%val548%_ (cadr _%clause544%_))
                             (_%sql-part550%_
                              (let ((__tmp5793 (number->string _%idx2535%_)))
                                (declare (not safe))
                                (##string-append _%tmpl546%_ __tmp5793))))
                        (_%lp2530%_
                         (cdr _%rest2532%_)
                         (cons _%sql-part550%_ _%where-parts533%_)
                         (cons _%val548%_ _%params2534%_)
                         (+ _%idx2535%_ '1)))))
                (let* ((_%set-pair553%_ (car _%rest525%_))
                       (_%col555%_ (car _%set-pair553%_))
                       (_%val557%_ (cadr _%set-pair553%_))
                       (_%sql-part559%_
                        (let ((__tmp5795
                               (jafourni/gerbil-postgres/query#sql-identifier
                                _%col555%_))
                              (__tmp5794 (number->string _%idx528%_)))
                          (declare (not safe))
                          (##string-append __tmp5795 '" = $" __tmp5794))))
                  (_%lp523%_
                   (cdr _%rest525%_)
                   (cons _%sql-part559%_ _%set-parts526%_)
                   (cons _%val557%_ _%params527%_)
                   (+ _%idx528%_ '1))))))))))
