(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |jafourni/gerbil-postgres/cursor[:0:]#with-cursor|
  (lambda (_%$stx2124%_)
    (let* ((_%__stx60156016%_ _%$stx2124%_)
           (_%g21292197%_
            (lambda ()
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx60156016%_)))))
      (let ((_%__kont60186019%_
             (lambda (_%L2422%_ _%L2424%_ _%L2425%_ _%L2426%_ _%L2427%_)
               (cons (let ()
                       (declare (not safe))
                       (gx#datum->syntax__0 '#f 'call-with-cursor))
                     (cons _%L2427%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L2426%_ '()))
                                 (cons _%L2425%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   '())
                                             (cons _%L2424%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'fetch-next))
                                   '())
                             (let ((__tmp6140
                                    (lambda (_%g24572460%_ _%g24582463%_)
                                      (cons _%g24572460%_ _%g24582463%_))))
                               (declare (not safe))
                               (__foldr1 __tmp6140 '() _%L2422%_))))
                 '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (_%__kont60226023%_
             (lambda (_%L2274%_ _%L2276%_ _%L2277%_ _%L2278%_)
               (cons (let ()
                       (declare (not safe))
                       (gx#datum->syntax__0 '#f 'call-with-cursor))
                     (cons _%L2278%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L2277%_ '()))
                                 (cons _%L2276%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   '())
                                             (cons '1000
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'fetch-next))
                                   '())
                             (let ((__tmp6141
                                    (lambda (_%g23022305%_ _%g23032308%_)
                                      (cons _%g23022305%_ _%g23032308%_))))
                               (declare (not safe))
                               (__foldr1 __tmp6141 '() _%L2274%_))))
                 '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        (let* ((_%__match61166117%_
                (lambda (_%e21712204%_
                         _%hd21722208%_
                         _%tl21732211%_
                         _%e21742214%_
                         _%hd21752218%_
                         _%tl21762221%_
                         _%e21772224%_
                         _%hd21782228%_
                         _%tl21792231%_
                         _%e21802234%_
                         _%hd21812238%_
                         _%tl21822241%_
                         _%__splice60246025%_
                         _%target21832244%_
                         _%tl21852247%_)
                  (letrec ((_%loop21862250%_
                            (lambda (_%hd21842254%_ _%body21902257%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd21842254%_))
                                  (let ((_%e21872260%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%hd21842254%_))))
                                    (let ((_%lp-tl21892267%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21872260%_)))
                                          (_%lp-hd21882264%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21872260%_))))
                                      (_%loop21862250%_
                                       _%lp-tl21892267%_
                                       (cons _%lp-hd21882264%_
                                             _%body21902257%_))))
                                  (let ((_%body21912270%_
                                         (reverse _%body21902257%_)))
                                    (_%__kont60226023%_
                                     _%body21912270%_
                                     _%hd21812238%_
                                     _%hd21782228%_
                                     _%hd21752218%_))))))
                    (_%loop21862250%_ _%target21832244%_ '()))))
               (_%__match60846085%_
                (lambda (_%e21362318%_
                         _%hd21372322%_
                         _%tl21382325%_
                         _%e21392328%_
                         _%hd21402332%_
                         _%tl21412335%_
                         _%e21422338%_
                         _%hd21432342%_
                         _%tl21442345%_
                         _%e21452348%_
                         _%hd21462352%_
                         _%tl21472355%_
                         _%e21482358%_
                         _%hd21492362%_
                         _%tl21502365%_
                         _%e21512368%_
                         _%hd21522372%_
                         _%tl21532375%_
                         _%e21542378%_
                         _%e21552382%_
                         _%hd21562386%_
                         _%tl21572389%_
                         _%__splice60206021%_
                         _%target21582392%_
                         _%tl21602395%_)
                  (letrec ((_%loop21612398%_
                            (lambda (_%hd21592402%_ _%body21652405%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd21592402%_))
                                  (let ((_%e21622408%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%hd21592402%_))))
                                    (let ((_%lp-tl21642415%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e21622408%_)))
                                          (_%lp-hd21632412%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e21622408%_))))
                                      (_%loop21612398%_
                                       _%lp-tl21642415%_
                                       (cons _%lp-hd21632412%_
                                             _%body21652405%_))))
                                  (let ((_%body21662418%_
                                         (reverse _%body21652405%_)))
                                    (_%__kont60186019%_
                                     _%body21662418%_
                                     _%hd21562386%_
                                     _%hd21462352%_
                                     _%hd21432342%_
                                     _%hd21402332%_))))))
                    (_%loop21612398%_ _%target21582392%_ '())))))
          (if (let () (declare (not safe)) (gx#stx-pair? _%__stx60156016%_))
              (let ((_%e21362318%_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e _%__stx60156016%_))))
                (let ((_%tl21382325%_
                       (let () (declare (not safe)) (##cdr _%e21362318%_)))
                      (_%hd21372322%_
                       (let () (declare (not safe)) (##car _%e21362318%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl21382325%_))
                      (let ((_%e21392328%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl21382325%_))))
                        (let ((_%tl21412335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e21392328%_)))
                              (_%hd21402332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e21392328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl21412335%_))
                              (let ((_%e21422338%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl21412335%_))))
                                (let ((_%tl21442345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e21422338%_)))
                                      (_%hd21432342%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e21422338%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl21442345%_))
                                      (let ((_%e21452348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _%tl21442345%_))))
                                        (let ((_%tl21472355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e21452348%_)))
                                              (_%hd21462352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e21452348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _%tl21472355%_))
                                              (let ((_%e21482358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl21472355%_))))
                                                (let ((_%tl21502365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e21482358%_)))
                                                      (_%hd21492362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e21482358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd21492362%_))
                                                      (let ((_%e21512368%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%hd21492362%_))))
                (let ((_%tl21532375%_
                       (let () (declare (not safe)) (##cdr _%e21512368%_)))
                      (_%hd21522372%_
                       (let () (declare (not safe)) (##car _%e21512368%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd21522372%_))
                      (let ((_%e21542378%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd21522372%_))))
                        (if (equal? _%e21542378%_ 'fetch-size:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl21532375%_))
                                (let ((_%e21552382%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl21532375%_))))
                                  (let ((_%tl21572389%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e21552382%_)))
                                        (_%hd21562386%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e21552382%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl21572389%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl21502365%_))
                                            (let ((_%__splice60206021%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice->vector
                                                      _%tl21502365%_
                                                      '0))))
                                              (let ((_%tl21602395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice60206021%_
                                                        '1)))
                                                    (_%target21582392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice60206021%_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl21602395%_))
                                                    (_%__match60846085%_
                                                     _%e21362318%_
                                                     _%hd21372322%_
                                                     _%tl21382325%_
                                                     _%e21392328%_
                                                     _%hd21402332%_
                                                     _%tl21412335%_
                                                     _%e21422338%_
                                                     _%hd21432342%_
                                                     _%tl21442345%_
                                                     _%e21452348%_
                                                     _%hd21462352%_
                                                     _%tl21472355%_
                                                     _%e21482358%_
                                                     _%hd21492362%_
                                                     _%tl21502365%_
                                                     _%e21512368%_
                                                     _%hd21522372%_
                                                     _%tl21532375%_
                                                     _%e21542378%_
                                                     _%e21552382%_
                                                     _%hd21562386%_
                                                     _%tl21572389%_
                                                     _%__splice60206021%_
                                                     _%target21582392%_
                                                     _%tl21602395%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl21472355%_))
                                                        (let ((_%__splice60246025%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector _%tl21472355%_ '0))))
                  (let ((_%tl21852247%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice60246025%_ '1)))
                        (_%target21832244%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice60246025%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl21852247%_))
                        (_%__match61166117%_
                         _%e21362318%_
                         _%hd21372322%_
                         _%tl21382325%_
                         _%e21392328%_
                         _%hd21402332%_
                         _%tl21412335%_
                         _%e21422338%_
                         _%hd21432342%_
                         _%tl21442345%_
                         _%e21452348%_
                         _%hd21462352%_
                         _%tl21472355%_
                         _%__splice60246025%_
                         _%target21832244%_
                         _%tl21852247%_)
                        (let () (declare (not safe)) (_%g21292197%_)))))
                (let () (declare (not safe)) (_%g21292197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%tl21472355%_))
                                                (let ((_%__splice60246025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%tl21472355%_
                                                          '0))))
                                                  (let ((_%tl21852247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice60246025%_
                                                            '1)))
                                                        (_%target21832244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice60246025%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl21852247%_))
                                                        (_%__match61166117%_
                                                         _%e21362318%_
                                                         _%hd21372322%_
                                                         _%tl21382325%_
                                                         _%e21392328%_
                                                         _%hd21402332%_
                                                         _%tl21412335%_
                                                         _%e21422338%_
                                                         _%hd21432342%_
                                                         _%tl21442345%_
                                                         _%e21452348%_
                                                         _%hd21462352%_
                                                         _%tl21472355%_
                                                         _%__splice60246025%_
                                                         _%target21832244%_
                                                         _%tl21852247%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g21292197%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g21292197%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl21472355%_))
                                            (let ((_%__splice60246025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice->vector
                                                      _%tl21472355%_
                                                      '0))))
                                              (let ((_%tl21852247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice60246025%_
                                                        '1)))
                                                    (_%target21832244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice60246025%_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl21852247%_))
                                                    (_%__match61166117%_
                                                     _%e21362318%_
                                                     _%hd21372322%_
                                                     _%tl21382325%_
                                                     _%e21392328%_
                                                     _%hd21402332%_
                                                     _%tl21412335%_
                                                     _%e21422338%_
                                                     _%hd21432342%_
                                                     _%tl21442345%_
                                                     _%e21452348%_
                                                     _%hd21462352%_
                                                     _%tl21472355%_
                                                     _%__splice60246025%_
                                                     _%target21832244%_
                                                     _%tl21852247%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g21292197%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g21292197%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl21472355%_))
                                    (let ((_%__splice60246025%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl21472355%_
                                              '0))))
                                      (let ((_%tl21852247%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice60246025%_
                                                '1)))
                                            (_%target21832244%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice60246025%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _%tl21852247%_))
                                            (_%__match61166117%_
                                             _%e21362318%_
                                             _%hd21372322%_
                                             _%tl21382325%_
                                             _%e21392328%_
                                             _%hd21402332%_
                                             _%tl21412335%_
                                             _%e21422338%_
                                             _%hd21432342%_
                                             _%tl21442345%_
                                             _%e21452348%_
                                             _%hd21462352%_
                                             _%tl21472355%_
                                             _%__splice60246025%_
                                             _%target21832244%_
                                             _%tl21852247%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g21292197%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g21292197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl21472355%_))
                                (let ((_%__splice60246025%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice->vector
                                          _%tl21472355%_
                                          '0))))
                                  (let ((_%tl21852247%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice60246025%_
                                            '1)))
                                        (_%target21832244%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice60246025%_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl21852247%_))
                                        (_%__match61166117%_
                                         _%e21362318%_
                                         _%hd21372322%_
                                         _%tl21382325%_
                                         _%e21392328%_
                                         _%hd21402332%_
                                         _%tl21412335%_
                                         _%e21422338%_
                                         _%hd21432342%_
                                         _%tl21442345%_
                                         _%e21452348%_
                                         _%hd21462352%_
                                         _%tl21472355%_
                                         _%__splice60246025%_
                                         _%target21832244%_
                                         _%tl21852247%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g21292197%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g21292197%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl21472355%_))
                          (let ((_%__splice60246025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl21472355%_
                                    '0))))
                            (let ((_%tl21852247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice60246025%_ '1)))
                                  (_%target21832244%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice60246025%_ '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl21852247%_))
                                  (_%__match61166117%_
                                   _%e21362318%_
                                   _%hd21372322%_
                                   _%tl21382325%_
                                   _%e21392328%_
                                   _%hd21402332%_
                                   _%tl21412335%_
                                   _%e21422338%_
                                   _%hd21432342%_
                                   _%tl21442345%_
                                   _%e21452348%_
                                   _%hd21462352%_
                                   _%tl21472355%_
                                   _%__splice60246025%_
                                   _%target21832244%_
                                   _%tl21852247%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g21292197%_)))))
                          (let () (declare (not safe)) (_%g21292197%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl21472355%_))
                  (let ((_%__splice60246025%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl21472355%_
                            '0))))
                    (let ((_%tl21852247%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice60246025%_ '1)))
                          (_%target21832244%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice60246025%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl21852247%_))
                          (_%__match61166117%_
                           _%e21362318%_
                           _%hd21372322%_
                           _%tl21382325%_
                           _%e21392328%_
                           _%hd21402332%_
                           _%tl21412335%_
                           _%e21422338%_
                           _%hd21432342%_
                           _%tl21442345%_
                           _%e21452348%_
                           _%hd21462352%_
                           _%tl21472355%_
                           _%__splice60246025%_
                           _%target21832244%_
                           _%tl21852247%_)
                          (let () (declare (not safe)) (_%g21292197%_)))))
                  (let () (declare (not safe)) (_%g21292197%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl21472355%_))
                                                  (let ((_%__splice60246025%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice->vector
                                                            _%tl21472355%_
                                                            '0))))
                                                    (let ((_%tl21852247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice60246025%_
                                                              '1)))
                                                          (_%target21832244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice60246025%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl21852247%_))
                                                          (_%__match61166117%_
                                                           _%e21362318%_
                                                           _%hd21372322%_
                                                           _%tl21382325%_
                                                           _%e21392328%_
                                                           _%hd21402332%_
                                                           _%tl21412335%_
                                                           _%e21422338%_
                                                           _%hd21432342%_
                                                           _%tl21442345%_
                                                           _%e21452348%_
                                                           _%hd21462352%_
                                                           _%tl21472355%_
                                                           _%__splice60246025%_
                                                           _%target21832244%_
                                                           _%tl21852247%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g21292197%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g21292197%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g21292197%_)))))
                              (let () (declare (not safe)) (_%g21292197%_)))))
                      (let () (declare (not safe)) (_%g21292197%_)))))
              (let () (declare (not safe)) (_%g21292197%_))))))))
