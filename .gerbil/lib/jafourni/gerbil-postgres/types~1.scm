(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |jafourni/gerbil-postgres/types[:0:]#using-pg-types|
  (lambda (_%$stx266%_)
    (let* ((_%g270290%_
            (lambda (_%g271286%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g271286%_))))
           (_%g269364%_
            (lambda (_%g271294%_)
              (if (let () (declare (not safe)) (gx#stx-pair? _%g271294%_))
                  (let ((_%e273297%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%g271294%_))))
                    (let ((_%hd274301%_
                           (let () (declare (not safe)) (##car _%e273297%_)))
                          (_%tl275304%_
                           (let () (declare (not safe)) (##cdr _%e273297%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl275304%_))
                          (let ((_g5780_ (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _%tl275304%_
                                            '0))))
                            (begin
                              (let ((_g5781_ (let ()
                                               (declare (not safe))
                                               (if (##values? _g5780_)
                                                   (##values-length _g5780_)
                                                   1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g5781_ 2)))
                                    (error "Context expects 2 values"
                                           _g5781_)))
                              (let ((_%target276307%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g5780_ 0)))
                                    (_%tl278310%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g5780_ 1))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl278310%_))
                                    (letrec ((_%loop279313%_
                                              (lambda (_%hd277317%_
                                                       _%body283320%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd277317%_))
                                                    (let ((_%e280323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%hd277317%_))))
                                                      (let ((_%lp-hd281327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e280323%_)))
                    (_%lp-tl282330%_
                     (let () (declare (not safe)) (##cdr _%e280323%_))))
                (_%loop279313%_
                 _%lp-tl282330%_
                 (cons _%lp-hd281327%_ _%body283320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body284333%_
                                                           (reverse _%body283320%_)))
                                                      ((lambda (_%L337%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'parameterize))
                       (cons (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'current-catalog))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'pg-catalog))
                                               '()))
                                   '())
                             (let ((__tmp5782
                                    (lambda (_%g355358%_ _%g356361%_)
                                      (cons _%g355358%_ _%g356361%_))))
                               (declare (not safe))
                               (__foldr1 __tmp5782 '() _%L337%_)))))
               _%body284333%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop279313%_ _%target276307%_ '()))
                                    (_%g270290%_ _%g271294%_)))))
                          (_%g270290%_ _%g271294%_))))
                  (_%g270290%_ _%g271294%_)))))
      (_%g269364%_ _%$stx266%_))))
