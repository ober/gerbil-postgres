(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/pool::timestamp 1772159947)
  (begin
    (define jafourni/gerbil-postgres/pool#pg-pool::t
      (let ((__tmp5800 (list))
            (__tmp5799
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'jafourni/gerbil-postgres/pool#pg-pool::t
         'pg-pool
         __tmp5800
         '(conpool connect-fn config mx counters)
         __tmp5799
         ':init!)))
    (define jafourni/gerbil-postgres/pool#pg-pool?
      (let ()
        (declare (not safe))
        (__make-class-predicate jafourni/gerbil-postgres/pool#pg-pool::t)))
    (define jafourni/gerbil-postgres/pool#make-pg-pool
      (lambda _%$args1056%_
        (apply make-instance
               jafourni/gerbil-postgres/pool#pg-pool::t
               _%$args1056%_)))
    (define jafourni/gerbil-postgres/pool#pg-pool-conpool
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'conpool)))
    (define jafourni/gerbil-postgres/pool#pg-pool-connect-fn
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'connect-fn)))
    (define jafourni/gerbil-postgres/pool#pg-pool-config
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'config)))
    (define jafourni/gerbil-postgres/pool#pg-pool-mx
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'mx)))
    (define jafourni/gerbil-postgres/pool#pg-pool-counters
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'counters)))
    (define jafourni/gerbil-postgres/pool#pg-pool-conpool-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'conpool)))
    (define jafourni/gerbil-postgres/pool#pg-pool-connect-fn-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'connect-fn)))
    (define jafourni/gerbil-postgres/pool#pg-pool-config-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'config)))
    (define jafourni/gerbil-postgres/pool#pg-pool-mx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'mx)))
    (define jafourni/gerbil-postgres/pool#pg-pool-counters-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'counters)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-conpool
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'conpool)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-connect-fn
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'connect-fn)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-config
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'config)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-mx
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'mx)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-counters
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/pool#pg-pool::t
         'counters)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-conpool-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'conpool)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-connect-fn-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'connect-fn)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-config-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'config)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-mx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'mx)))
    (define jafourni/gerbil-postgres/pool#&pg-pool-counters-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/pool#pg-pool::t
         'counters)))
    (define jafourni/gerbil-postgres/pool#pg-pool:::init!
      (lambda (_%self1032%_
               _%connect-fn1033%_
               _%max-connections1034%_
               _%validation-query1035%_)
        (let* ((_%self1038%_ _%self1032%_)
               (_%pool1048%_
                (let ((__obj5797
                       (let ()
                         (declare (not safe))
                         (##structure
                          std/db/conpool#conpool::t
                          '#f
                          '#f
                          '#f
                          '#f
                          '#f
                          '#f))))
                  (let ()
                    (declare (not safe))
                    (std/db/conpool#conpool:::init!__%
                     __obj5797
                     _%connect-fn1033%_
                     _%max-connections1034%_))
                  __obj5797)))
          (if (let ((__tmp5801
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self1038%_))))
                (declare (not safe))
                (##fx< '5 __tmp5801))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self1038%_
                   _%pool1048%_
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self1038%_
                   _%connect-fn1033%_
                   '2
                   '#f
                   '#f))
                (let ((__tmp5802
                       (let ((_%ht1050%_
                              (let ()
                                (declare (not safe))
                                (make-hash-table__%
                                 '#f
                                 '2
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value))))
                         (let ()
                           (declare (not safe))
                           (__hash-put!
                            _%ht1050%_
                            'max-connections
                            _%max-connections1034%_))
                         (let ()
                           (declare (not safe))
                           (__hash-put!
                            _%ht1050%_
                            'validation-query
                            _%validation-query1035%_))
                         _%ht1050%_)))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self1038%_
                   __tmp5802
                   '3
                   '#f
                   '#f))
                (let ((__tmp5803 (make-mutex 'pg-pool-stats)))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self1038%_
                   __tmp5803
                   '4
                   '#f
                   '#f))
                (let ((__tmp5804
                       (let ((_%ht1053%_
                              (let ()
                                (declare (not safe))
                                (make-hash-table__%
                                 '#f
                                 '4
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value
                                 absent-value))))
                         (let ()
                           (declare (not safe))
                           (__hash-put! _%ht1053%_ 'gets '0))
                         (let ()
                           (declare (not safe))
                           (__hash-put! _%ht1053%_ 'puts '0))
                         (let ()
                           (declare (not safe))
                           (__hash-put! _%ht1053%_ 'releases '0))
                         (let ()
                           (declare (not safe))
                           (__hash-put! _%ht1053%_ 'failures '0))
                         _%ht1053%_)))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self1038%_
                   __tmp5804
                   '5
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp5805
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self1038%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self1038%_
                       '5
                       __tmp5805))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       jafourni/gerbil-postgres/pool#pg-pool::t
       ':init!
       jafourni/gerbil-postgres/pool#pg-pool:::init!
       '#f))
    (define jafourni/gerbil-postgres/pool#pg-pool-open__%
      (lambda (_%@@keywords886%_
               _%max-conns882887%_
               _%validation883889%_
               _%connect-fn891%_)
        (let* ((_%max-conns893%_
                (if (eq? _%max-conns882887%_ absent-value)
                    '10
                    _%max-conns882887%_))
               (_%validation895%_
                (if (eq? _%validation883889%_ absent-value)
                    '"SELECT 1"
                    _%validation883889%_))
               (__obj5798
                (let ()
                  (declare (not safe))
                  (##structure
                   jafourni/gerbil-postgres/pool#pg-pool::t
                   '#f
                   '#f
                   '#f
                   '#f
                   '#f))))
          (jafourni/gerbil-postgres/pool#pg-pool:::init!
           __obj5798
           _%connect-fn891%_
           _%max-conns893%_
           _%validation895%_)
          __obj5798)))
    (define jafourni/gerbil-postgres/pool#pg-pool-open__@
      (lambda (_%@@keywords900%_ . _%args901%_)
        (apply jafourni/gerbil-postgres/pool#pg-pool-open__%
               _%@@keywords900%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords900%_
                  'max-connections:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords900%_
                  'validation-query:
                  absent-value))
               _%args901%_)))
    (define jafourni/gerbil-postgres/pool#pg-pool-open
      (lambda _%args884907%_
        (apply keyword-dispatch
               '#(#f max-connections: validation-query:)
               jafourni/gerbil-postgres/pool#pg-pool-open__@
               _%args884907%_)))
    (define jafourni/gerbil-postgres/pool#pg-pool-get__%
      (lambda (_%pool861%_ _%timeout862%_)
        (let ((_%conn864%_
               (if _%timeout862%_
                   (let ((__tmp5806
                          (##direct-structure-ref
                           _%pool861%_
                           '1
                           jafourni/gerbil-postgres/pool#pg-pool::t
                           '#f)))
                     (declare (not safe))
                     (std/db/conpool#conpool-get__% __tmp5806 _%timeout862%_))
                   (let ((__tmp5807
                          (##direct-structure-ref
                           _%pool861%_
                           '1
                           jafourni/gerbil-postgres/pool#pg-pool::t
                           '#f)))
                     (declare (not safe))
                     (std/db/conpool#conpool-get__0 __tmp5807)))))
          (jafourni/gerbil-postgres/pool#pg-counters-inc! _%pool861%_ 'gets)
          (let ((_%vq866%_
                 (let ((__tmp5808
                        (##direct-structure-ref
                         _%pool861%_
                         '3
                         jafourni/gerbil-postgres/pool#pg-pool::t
                         '#f)))
                   (declare (not safe))
                   (hash-get __tmp5808 'validation-query))))
            (if _%vq866%_
                (let ((__tmp5810
                       (lambda (_%e868%_)
                         (let ()
                           (declare (not safe))
                           (jafourni/gerbil-postgres/logging#debugf
                            '"connection validation failed, releasing: ~a"
                            _%e868%_))
                         (jafourni/gerbil-postgres/pool#pg-counters-inc!
                          _%pool861%_
                          'failures)
                         (let ((__tmp5811
                                (##direct-structure-ref
                                 _%pool861%_
                                 '1
                                 jafourni/gerbil-postgres/pool#pg-pool::t
                                 '#f)))
                           (declare (not safe))
                           (std/db/conpool#conpool-release
                            __tmp5811
                            _%conn864%_))
                         (set! _%conn864%_
                               (if _%timeout862%_
                                   (let ((__tmp5812
                                          (##direct-structure-ref
                                           _%pool861%_
                                           '1
                                           jafourni/gerbil-postgres/pool#pg-pool::t
                                           '#f)))
                                     (declare (not safe))
                                     (std/db/conpool#conpool-get__%
                                      __tmp5812
                                      _%timeout862%_))
                                   (let ((__tmp5813
                                          (##direct-structure-ref
                                           _%pool861%_
                                           '1
                                           jafourni/gerbil-postgres/pool#pg-pool::t
                                           '#f)))
                                     (declare (not safe))
                                     (std/db/conpool#conpool-get__0
                                      __tmp5813))))))
                      (__tmp5809
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (std/db/dbi#sql-eval _%conn864%_ _%vq866%_)))))
                  (declare (not safe))
                  (__with-catch __tmp5810 __tmp5809))
                '#!void))
          _%conn864%_)))
    (define jafourni/gerbil-postgres/pool#pg-pool-get__0
      (lambda (_%pool874%_)
        (let ((_%timeout876%_ '#f))
          (jafourni/gerbil-postgres/pool#pg-pool-get__%
           _%pool874%_
           _%timeout876%_))))
    (define jafourni/gerbil-postgres/pool#pg-pool-get
      (lambda _g5814_
        (let ((_g5815_ (let () (declare (not safe)) (##length _g5814_))))
          (cond ((let () (declare (not safe)) (##fx= _g5815_ 1))
                 (apply jafourni/gerbil-postgres/pool#pg-pool-get__0 _g5814_))
                ((let () (declare (not safe)) (##fx= _g5815_ 2))
                 (apply jafourni/gerbil-postgres/pool#pg-pool-get__% _g5814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  jafourni/gerbil-postgres/pool#pg-pool-get
                  _g5814_))))))
    (define jafourni/gerbil-postgres/pool#pg-pool-put
      (lambda (_%pool857%_ _%conn858%_)
        (jafourni/gerbil-postgres/pool#pg-counters-inc! _%pool857%_ 'puts)
        (let ((__tmp5816
               (##direct-structure-ref
                _%pool857%_
                '1
                jafourni/gerbil-postgres/pool#pg-pool::t
                '#f)))
          (declare (not safe))
          (std/db/conpool#conpool-put __tmp5816 _%conn858%_))))
    (define jafourni/gerbil-postgres/pool#pg-pool-release
      (lambda (_%pool854%_ _%conn855%_)
        (jafourni/gerbil-postgres/pool#pg-counters-inc! _%pool854%_ 'releases)
        (let ((__tmp5817
               (##direct-structure-ref
                _%pool854%_
                '1
                jafourni/gerbil-postgres/pool#pg-pool::t
                '#f)))
          (declare (not safe))
          (std/db/conpool#conpool-release __tmp5817 _%conn855%_))))
    (define jafourni/gerbil-postgres/pool#pg-pool-shutdown
      (lambda (_%pool852%_)
        (let ((__tmp5818
               (##direct-structure-ref
                _%pool852%_
                '1
                jafourni/gerbil-postgres/pool#pg-pool::t
                '#f)))
          (declare (not safe))
          (std/db/conpool#conpool-close __tmp5818))))
    (define jafourni/gerbil-postgres/pool#pg-pool-get-stats
      (lambda (_%pool846%_)
        (let ((_%mx848%_
               (##direct-structure-ref
                _%pool846%_
                '4
                jafourni/gerbil-postgres/pool#pg-pool::t
                '#f)))
          (mutex-lock! _%mx848%_)
          (let ((__tmp5820
                 (lambda ()
                   (let ((__tmp5821
                          (##direct-structure-ref
                           _%pool846%_
                           '5
                           jafourni/gerbil-postgres/pool#pg-pool::t
                           '#f)))
                     (declare (not safe))
                     (hash-copy __tmp5821))))
                (__tmp5819 (lambda () (mutex-unlock! _%mx848%_))))
            (declare (not safe))
            (__with-unwind-protect __tmp5820 __tmp5819)))))
    (define jafourni/gerbil-postgres/pool#pg-counters-inc!
      (lambda (_%pool839%_ _%key840%_)
        (let ((_%mx842%_
               (##direct-structure-ref
                _%pool839%_
                '4
                jafourni/gerbil-postgres/pool#pg-pool::t
                '#f)))
          (mutex-lock! _%mx842%_)
          (let ((__tmp5823
                 (lambda ()
                   (let ((__tmp5824
                          (##direct-structure-ref
                           _%pool839%_
                           '5
                           jafourni/gerbil-postgres/pool#pg-pool::t
                           '#f)))
                     (declare (not safe))
                     (hash-update!__% __tmp5824 _%key840%_ 1+ '0))))
                (__tmp5822 (lambda () (mutex-unlock! _%mx842%_))))
            (declare (not safe))
            (__with-unwind-protect __tmp5823 __tmp5822)))))))
