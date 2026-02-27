(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |jafourni/gerbil-postgres/pool[1]#_g5826_|
    (##structure
     gx#syntax-quote::t
     'pg-pool::t
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5828_|
    (##structure
     gx#syntax-quote::t
     'make-pg-pool
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5830_|
    (##structure
     gx#syntax-quote::t
     'pg-pool?
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5832_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-conpool
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5833_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-connect-fn
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5834_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-config
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5835_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-mx
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5836_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-counters
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5838_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-conpool-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5839_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-connect-fn-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5840_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-config-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5841_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-mx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5842_|
    (##structure
     gx#syntax-quote::t
     'pg-pool-counters-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5844_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-conpool
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5845_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-connect-fn
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5846_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-config
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5847_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-mx
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5848_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-counters
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5850_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-conpool-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5851_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-connect-fn-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5852_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-config-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5853_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-mx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |jafourni/gerbil-postgres/pool[1]#_g5854_|
    (##structure
     gx#syntax-quote::t
     '&pg-pool-counters-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |jafourni/gerbil-postgres/pool[:0:]#pg-pool|
      (let ((__obj5796
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj5796
           'jafourni/gerbil-postgres/pool#pg-pool::t
           '1
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 'pg-pool '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj5796
           '(conpool connect-fn config mx counters)
           '4
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj5796
           '(conpool connect-fn config mx counters)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '#t '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '#t '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 ':init! '11 '#f '#f))
        (let ((__tmp5825 |jafourni/gerbil-postgres/pool[1]#_g5826_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5825 '12 '#f '#f))
        (let ((__tmp5827 |jafourni/gerbil-postgres/pool[1]#_g5828_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5827 '13 '#f '#f))
        (let ((__tmp5829 |jafourni/gerbil-postgres/pool[1]#_g5830_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5829 '14 '#f '#f))
        (let ((__tmp5831
               (cons (cons 'conpool |jafourni/gerbil-postgres/pool[1]#_g5832_|)
                     (cons (cons 'connect-fn
                                 |jafourni/gerbil-postgres/pool[1]#_g5833_|)
                           (cons (cons 'config
                                       |jafourni/gerbil-postgres/pool[1]#_g5834_|)
                                 (cons (cons 'mx
                                             |jafourni/gerbil-postgres/pool[1]#_g5835_|)
                                       (cons (cons 'counters
                                                   |jafourni/gerbil-postgres/pool[1]#_g5836_|)
                                             '())))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5831 '15 '#f '#f))
        (let ((__tmp5837
               (cons (cons 'conpool |jafourni/gerbil-postgres/pool[1]#_g5838_|)
                     (cons (cons 'connect-fn
                                 |jafourni/gerbil-postgres/pool[1]#_g5839_|)
                           (cons (cons 'config
                                       |jafourni/gerbil-postgres/pool[1]#_g5840_|)
                                 (cons (cons 'mx
                                             |jafourni/gerbil-postgres/pool[1]#_g5841_|)
                                       (cons (cons 'counters
                                                   |jafourni/gerbil-postgres/pool[1]#_g5842_|)
                                             '())))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5837 '16 '#f '#f))
        (let ((__tmp5843
               (cons (cons 'conpool |jafourni/gerbil-postgres/pool[1]#_g5844_|)
                     (cons (cons 'connect-fn
                                 |jafourni/gerbil-postgres/pool[1]#_g5845_|)
                           (cons (cons 'config
                                       |jafourni/gerbil-postgres/pool[1]#_g5846_|)
                                 (cons (cons 'mx
                                             |jafourni/gerbil-postgres/pool[1]#_g5847_|)
                                       (cons (cons 'counters
                                                   |jafourni/gerbil-postgres/pool[1]#_g5848_|)
                                             '())))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5843 '17 '#f '#f))
        (let ((__tmp5849
               (cons (cons 'conpool |jafourni/gerbil-postgres/pool[1]#_g5850_|)
                     (cons (cons 'connect-fn
                                 |jafourni/gerbil-postgres/pool[1]#_g5851_|)
                           (cons (cons 'config
                                       |jafourni/gerbil-postgres/pool[1]#_g5852_|)
                                 (cons (cons 'mx
                                             |jafourni/gerbil-postgres/pool[1]#_g5853_|)
                                       (cons (cons 'counters
                                                   |jafourni/gerbil-postgres/pool[1]#_g5854_|)
                                             '())))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 __tmp5849 '18 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '() '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '() '21 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj5796 '() '20 '#f '#f))
        __obj5796))
    (define |jafourni/gerbil-postgres/pool[:0:]#with-connection|
      (lambda (_%$stx702%_)
        (let* ((_%g706734%_
                (lambda (_%g707730%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g707730%_))))
               (_%g705834%_
                (lambda (_%g707738%_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _%g707738%_))
                      (let ((_%e711741%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g707738%_))))
                        (let ((_%hd712745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e711741%_)))
                              (_%tl713748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e711741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl713748%_))
                              (let ((_%e714751%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl713748%_))))
                                (let ((_%hd715755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e714751%_)))
                                      (_%tl716758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e714751%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl716758%_))
                                      (let ((_%e717761%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _%tl716758%_))))
                                        (let ((_%hd718765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e717761%_)))
                                              (_%tl719768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e717761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl719768%_))
                                              (let ((_g5855_ (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl719768%_ '0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (let ((_g5856_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (if (##values? _g5855_)
                               (##values-length _g5855_)
                               1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g5856_ 2)))
                (error "Context expects 2 values" _g5856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target720771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g5855_
                                                            0)))
                                                        (_%tl722774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g5855_
                                                            1))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl722774%_))
                                                        (letrec ((_%loop723777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd721781%_ _%body727784%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd721781%_))
                                (let ((_%e724787%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd721781%_))))
                                  (let ((_%lp-hd725791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e724787%_)))
                                        (_%lp-tl726794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e724787%_))))
                                    (_%loop723777%_
                                     _%lp-tl726794%_
                                     (cons _%lp-hd725791%_ _%body727784%_))))
                                (let ((_%body728797%_
                                       (reverse _%body727784%_)))
                                  ((lambda (_%L801%_ _%L803%_ _%L804%_)
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'let))
                                           (cons (cons _%L803%_
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'pg-pool-get))
                           (cons _%L804%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'try))
                     (let ((__tmp5858
                            (lambda (_%g825828%_ _%g826831%_)
                              (cons _%g825828%_ _%g826831%_)))
                           (__tmp5857
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'finally))
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'pg-pool-put))
                                                    (cons _%L804%_
                                                          (cons _%L803%_ '())))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldr1 __tmp5858 __tmp5857 _%L801%_)))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%body728797%_
                                   _%hd718765%_
                                   _%hd715755%_))))))
                  (_%loop723777%_ _%target720771%_ '()))
                (_%g706734%_ _%g707738%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g706734%_ _%g707738%_))))
                                      (_%g706734%_ _%g707738%_))))
                              (_%g706734%_ _%g707738%_))))
                      (_%g706734%_ _%g707738%_)))))
          (_%g705834%_ _%$stx702%_))))))
