(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |jafourni/gerbil-postgres/retry[:0:]#with-retry|
  (lambda (_%$stx1060%_)
    (let* ((_%g10641101%_
            (lambda (_%g10651097%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g10651097%_))))
           (_%g10631243%_
            (lambda (_%g10651105%_)
              (if (let () (declare (not safe)) (gx#stx-pair? _%g10651105%_))
                  (let ((_%e10691108%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g10651105%_))))
                    (let ((_%hd10701112%_
                           (let () (declare (not safe)) (##car _%e10691108%_)))
                          (_%tl10711115%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e10691108%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl10711115%_))
                          (let ((_%e10721118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl10711115%_))))
                            (let ((_%hd10731122%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e10721118%_)))
                                  (_%tl10741125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e10721118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd10731122%_))
                                  (let ((_%e10751128%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%hd10731122%_))))
                                    (let ((_%hd10761132%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e10751128%_)))
                                          (_%tl10771135%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e10751128%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _%tl10771135%_))
                                          (let ((_g5861_ (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl10771135%_
                                                            '0))))
                                            (begin
                                              (let ((_g5862_ (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g5861_) (##values-length _g5861_) 1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g5862_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g5862_)))
                                              (let ((_%target10781138%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g5861_
                                                        0)))
                                                    (_%tl10801141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g5861_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl10801141%_))
                                                    (letrec ((_%loop10811144%_
                                                              (lambda (_%hd10791148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%val10851151%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd10791148%_))
                            (let ((_%e10821154%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%hd10791148%_))))
                              (let ((_%lp-hd10831158%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e10821154%_)))
                                    (_%lp-tl10841161%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e10821154%_))))
                                (_%loop10811144%_
                                 _%lp-tl10841161%_
                                 (cons _%lp-hd10831158%_ _%val10851151%_))))
                            (let ((_%val10861164%_ (reverse _%val10851151%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _%tl10741125%_))
                                  (let ((_g5863_ (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _%tl10741125%_
                                                    '0))))
                                    (begin
                                      (let ((_g5864_ (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g5863_)
                                                           (##values-length
                                                            _g5863_)
                                                           1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g5864_ 2)))
                                            (error "Context expects 2 values"
                                                   _g5864_)))
                                      (let ((_%target10871168%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g5863_ 0)))
                                            (_%tl10891171%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g5863_ 1))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _%tl10891171%_))
                                            (letrec ((_%loop10901174%_
                                                      (lambda (_%hd10881178%_
                                                               _%body10941181%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd10881178%_))
                                                            (let ((_%e10911184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%hd10881178%_))))
                      (let ((_%lp-hd10921188%_
                             (let ()
                               (declare (not safe))
                               (##car _%e10911184%_)))
                            (_%lp-tl10931191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e10911184%_))))
                        (_%loop10901174%_
                         _%lp-tl10931191%_
                         (cons _%lp-hd10921188%_ _%body10941181%_))))
                    (let ((_%body10951194%_ (reverse _%body10941181%_)))
                      ((lambda (_%L1198%_ _%L1200%_ _%L1201%_)
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'call-with-retry))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'lambda))
                                           (cons '()
                                                 (let ((__tmp5865
                                                        (lambda (_%g12261231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g12271234%_)
                  (cons _%g12261231%_ _%g12271234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp5865
                                                    '()
                                                    _%L1198%_))))
                                     (cons _%L1201%_
                                           (let ((__tmp5866
                                                  (lambda (_%g12281237%_
                                                           _%g12291240%_)
                                                    (cons _%g12281237%_
                                                          _%g12291240%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp5866
                                              '()
                                              _%L1200%_))))))
                       _%body10951194%_
                       _%val10861164%_
                       _%hd10761132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop10901174%_
                                               _%target10871168%_
                                               '()))
                                            (_%g10641101%_ _%g10651105%_)))))
                                  (_%g10641101%_ _%g10651105%_)))))))
              (_%loop10811144%_ _%target10781138%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g10641101%_
                                                     _%g10651105%_)))))
                                          (_%g10641101%_ _%g10651105%_))))
                                  (_%g10641101%_ _%g10651105%_))))
                          (_%g10641101%_ _%g10651105%_))))
                  (_%g10641101%_ _%g10651105%_)))))
      (_%g10631243%_ _%$stx1060%_))))
