(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/migrations::timestamp 1772159951)
  (begin
    (define jafourni/gerbil-postgres/migrations#migration::t
      (let ((__tmp6145 (list))
            (__tmp6144
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'jafourni/gerbil-postgres/migrations#migration::t
         'migration
         __tmp6145
         '(version name up-sql down-sql checksum)
         __tmp6144
         '#f)))
    (define jafourni/gerbil-postgres/migrations#migration?
      (let ()
        (declare (not safe))
        (__make-class-predicate
         jafourni/gerbil-postgres/migrations#migration::t)))
    (define jafourni/gerbil-postgres/migrations#make-migration
      (lambda _%$args2751%_
        (apply make-instance
               jafourni/gerbil-postgres/migrations#migration::t
               _%$args2751%_)))
    (define jafourni/gerbil-postgres/migrations#migration-version
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'version)))
    (define jafourni/gerbil-postgres/migrations#migration-name
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'name)))
    (define jafourni/gerbil-postgres/migrations#migration-up-sql
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'up-sql)))
    (define jafourni/gerbil-postgres/migrations#migration-down-sql
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'down-sql)))
    (define jafourni/gerbil-postgres/migrations#migration-checksum
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'checksum)))
    (define jafourni/gerbil-postgres/migrations#migration-version-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'version)))
    (define jafourni/gerbil-postgres/migrations#migration-name-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'name)))
    (define jafourni/gerbil-postgres/migrations#migration-up-sql-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'up-sql)))
    (define jafourni/gerbil-postgres/migrations#migration-down-sql-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'down-sql)))
    (define jafourni/gerbil-postgres/migrations#migration-checksum-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'checksum)))
    (define jafourni/gerbil-postgres/migrations#&migration-version
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'version)))
    (define jafourni/gerbil-postgres/migrations#&migration-name
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'name)))
    (define jafourni/gerbil-postgres/migrations#&migration-up-sql
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'up-sql)))
    (define jafourni/gerbil-postgres/migrations#&migration-down-sql
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'down-sql)))
    (define jafourni/gerbil-postgres/migrations#&migration-checksum
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migration::t
         'checksum)))
    (define jafourni/gerbil-postgres/migrations#&migration-version-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'version)))
    (define jafourni/gerbil-postgres/migrations#&migration-name-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'name)))
    (define jafourni/gerbil-postgres/migrations#&migration-up-sql-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'up-sql)))
    (define jafourni/gerbil-postgres/migrations#&migration-down-sql-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'down-sql)))
    (define jafourni/gerbil-postgres/migrations#&migration-checksum-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migration::t
         'checksum)))
    (define jafourni/gerbil-postgres/migrations#migrator::t
      (let ((__tmp6147 (list))
            (__tmp6146
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'jafourni/gerbil-postgres/migrations#migrator::t
         'migrator
         __tmp6147
         '(conn migrations lock-id)
         __tmp6146
         '#f)))
    (define jafourni/gerbil-postgres/migrations#migrator?
      (let ()
        (declare (not safe))
        (__make-class-predicate
         jafourni/gerbil-postgres/migrations#migrator::t)))
    (define jafourni/gerbil-postgres/migrations#make-migrator
      (lambda _%$args2748%_
        (apply make-instance
               jafourni/gerbil-postgres/migrations#migrator::t
               _%$args2748%_)))
    (define jafourni/gerbil-postgres/migrations#migrator-conn
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'conn)))
    (define jafourni/gerbil-postgres/migrations#migrator-migrations
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'migrations)))
    (define jafourni/gerbil-postgres/migrations#migrator-lock-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'lock-id)))
    (define jafourni/gerbil-postgres/migrations#migrator-conn-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'conn)))
    (define jafourni/gerbil-postgres/migrations#migrator-migrations-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'migrations)))
    (define jafourni/gerbil-postgres/migrations#migrator-lock-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'lock-id)))
    (define jafourni/gerbil-postgres/migrations#&migrator-conn
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'conn)))
    (define jafourni/gerbil-postgres/migrations#&migrator-migrations
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'migrations)))
    (define jafourni/gerbil-postgres/migrations#&migrator-lock-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         jafourni/gerbil-postgres/migrations#migrator::t
         'lock-id)))
    (define jafourni/gerbil-postgres/migrations#&migrator-conn-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'conn)))
    (define jafourni/gerbil-postgres/migrations#&migrator-migrations-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'migrations)))
    (define jafourni/gerbil-postgres/migrations#&migrator-lock-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         jafourni/gerbil-postgres/migrations#migrator::t
         'lock-id)))
    (define jafourni/gerbil-postgres/migrations#load-migrations-from-directory
      (lambda (_%dir2715%_)
        (let* ((_%files2717%_ (directory-files _%dir2715%_))
               (_%up-files2721%_
                (let ((__tmp6148
                       (lambda (_%f2719%_)
                         (jafourni/gerbil-postgres/migrations#string-suffix?
                          '".up.sql"
                          _%f2719%_))))
                  (declare (not safe))
                  (##filter __tmp6148 _%files2717%_)))
               (_%migrations2742%_
                (let ((__tmp6149
                       (lambda (_%up-file2723%_)
                         (let* ((_%base2725%_
                                 (substring
                                  _%up-file2723%_
                                  '0
                                  (- (string-length _%up-file2723%_) '7)))
                                (_%down-file2727%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-append
                                    _%base2725%_
                                    '".down.sql")))
                                (_%version2729%_
                                 (jafourni/gerbil-postgres/migrations#parse-migration-version
                                  _%base2725%_))
                                (_%name2731%_
                                 (jafourni/gerbil-postgres/migrations#parse-migration-name
                                  _%base2725%_))
                                (_%up-sql2733%_
                                 (let ((__tmp6150
                                        (path-expand
                                         _%up-file2723%_
                                         _%dir2715%_)))
                                   (declare (not safe))
                                   (std/misc/ports#read-file-string__%
                                    '#f
                                    absent-value
                                    __tmp6150)))
                                (_%down-sql2737%_
                                 (let ((_%p2735%_
                                        (path-expand
                                         _%down-file2727%_
                                         _%dir2715%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##file-exists? _%p2735%_))
                                       (let ()
                                         (declare (not safe))
                                         (std/misc/ports#read-file-string__%
                                          '#f
                                          absent-value
                                          _%p2735%_))
                                       '#f)))
                                (_%checksum2739%_
                                 (jafourni/gerbil-postgres/migrations#string-crc32
                                  _%up-sql2733%_)))
                           (declare (not safe))
                           (##structure
                            jafourni/gerbil-postgres/migrations#migration::t
                            _%version2729%_
                            _%name2731%_
                            _%up-sql2733%_
                            _%down-sql2737%_
                            _%checksum2739%_)))))
                  (declare (not safe))
                  (##map __tmp6149 _%up-files2721%_)))
               (__tmp6151
                (lambda (_%a2745%_ _%b2746%_)
                  (< (##direct-structure-ref
                      _%a2745%_
                      '1
                      jafourni/gerbil-postgres/migrations#migration::t
                      '#f)
                     (##direct-structure-ref
                      _%b2746%_
                      '1
                      jafourni/gerbil-postgres/migrations#migration::t
                      '#f)))))
          (declare (not safe))
          (std/sort#sort _%migrations2742%_ __tmp6151))))
    (define jafourni/gerbil-postgres/migrations#string-suffix?
      (lambda (_%suffix2709%_ _%str2710%_)
        (let ((_%slen2712%_ (string-length _%suffix2709%_))
              (_%len2713%_ (string-length _%str2710%_)))
          (if (>= _%len2713%_ _%slen2712%_)
              (string=?
               (substring _%str2710%_ (- _%len2713%_ _%slen2712%_) _%len2713%_)
               _%suffix2709%_)
              '#f))))
    (define jafourni/gerbil-postgres/migrations#parse-migration-version
      (lambda (_%base2700%_)
        (let _%lp2702%_ ((_%i2704%_ '0))
          (if (or (>= _%i2704%_ (string-length _%base2700%_))
                  (not (char-numeric? (string-ref _%base2700%_ _%i2704%_))))
              (let ((__tmp6152 (substring _%base2700%_ '0 _%i2704%_)))
                (declare (not safe))
                (##string->number __tmp6152))
              (_%lp2702%_ (+ _%i2704%_ '1))))))
    (define jafourni/gerbil-postgres/migrations#parse-migration-name
      (lambda (_%base2689%_)
        (let ((_%idx2698%_
               (let _%lp2691%_ ((_%i2693%_ '0))
                 (if (or (>= _%i2693%_ (string-length _%base2689%_))
                         (let ((__tmp6153 (string-ref _%base2689%_ _%i2693%_)))
                           (declare (not safe))
                           (##char=? __tmp6153 '#\_)))
                     (+ _%i2693%_ '1)
                     (_%lp2691%_ (+ _%i2693%_ '1))))))
          (if (< _%idx2698%_ (string-length _%base2689%_))
              (substring _%base2689%_ _%idx2698%_ (string-length _%base2689%_))
              _%base2689%_))))
    (define jafourni/gerbil-postgres/migrations#string-crc32
      (lambda (_%str2682%_)
        (let _%lp2684%_ ((_%i2686%_ '0) (_%crc2687%_ '0))
          (if (>= _%i2686%_ (string-length _%str2682%_))
              (let ((__tmp6154 (bitwise-and _%crc2687%_ '4294967295)))
                (declare (not safe))
                (##number->string __tmp6154 '16))
              (_%lp2684%_
               (+ _%i2686%_ '1)
               (bitwise-xor
                _%crc2687%_
                (let ((__tmp6155 (string-ref _%str2682%_ _%i2686%_)))
                  (declare (not safe))
                  (##char->integer __tmp6155))))))))
    (define jafourni/gerbil-postgres/migrations#+migration-lock-id+ '8675309)
    (define jafourni/gerbil-postgres/migrations#migrator-open__%
      (lambda (_%@@keywords2659%_
               _%lock-timeout26562660%_
               _%conn2662%_
               _%migrations-or-dir2663%_)
        (let* ((_%lock-timeout2665%_
                (if (eq? _%lock-timeout26562660%_ absent-value)
                    '30
                    _%lock-timeout26562660%_))
               (_%migrations2667%_
                (if (string? _%migrations-or-dir2663%_)
                    (jafourni/gerbil-postgres/migrations#load-migrations-from-directory
                     _%migrations-or-dir2663%_)
                    _%migrations-or-dir2663%_)))
          (jafourni/gerbil-postgres/migrations#ensure-migration-table!
           _%conn2662%_)
          (let ()
            (declare (not safe))
            (##structure
             jafourni/gerbil-postgres/migrations#migrator::t
             _%conn2662%_
             _%migrations2667%_
             jafourni/gerbil-postgres/migrations#+migration-lock-id+)))))
    (define jafourni/gerbil-postgres/migrations#migrator-open__@
      (lambda (_%@@keywords2672%_ . _%args2673%_)
        (apply jafourni/gerbil-postgres/migrations#migrator-open__%
               _%@@keywords2672%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords2672%_
                  'lock-timeout:
                  absent-value))
               _%args2673%_)))
    (define jafourni/gerbil-postgres/migrations#migrator-open
      (lambda _%args26572679%_
        (apply keyword-dispatch
               '#(lock-timeout:)
               jafourni/gerbil-postgres/migrations#migrator-open__@
               _%args26572679%_)))
    (define jafourni/gerbil-postgres/migrations#ensure-migration-table!
      (lambda (_%conn2653%_)
        (let ()
          (declare (not safe))
          (std/db/dbi#sql-eval
           _%conn2653%_
           '"CREATE TABLE IF NOT EXISTS _migrations (\n       version INTEGER PRIMARY KEY,\n       name TEXT NOT NULL,\n       applied_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),\n       checksum TEXT\n     )"))))
    (define jafourni/gerbil-postgres/migrations#with-advisory-lock
      (lambda (_%conn2646%_ _%lock-id2647%_ _%thunk2648%_)
        (let ((__tmp6156
               (let ((__tmp6157 (number->string _%lock-id2647%_)))
                 (declare (not safe))
                 (##string-append
                  '"SELECT pg_advisory_lock("
                  __tmp6157
                  '")"))))
          (declare (not safe))
          (std/db/dbi#sql-eval _%conn2646%_ __tmp6156))
        (let ((__tmp6162 (lambda () (_%thunk2648%_)))
              (__tmp6158
               (lambda ()
                 (let ((__tmp6159
                        (lambda ()
                          (let ((__tmp6160
                                 (let ((__tmp6161
                                        (number->string _%lock-id2647%_)))
                                   (declare (not safe))
                                   (##string-append
                                    '"SELECT pg_advisory_unlock("
                                    __tmp6161
                                    '")"))))
                            (declare (not safe))
                            (std/db/dbi#sql-eval _%conn2646%_ __tmp6160)))))
                   (declare (not safe))
                   (__with-catch void __tmp6159)))))
          (declare (not safe))
          (__with-unwind-protect __tmp6162 __tmp6158))))
    (define jafourni/gerbil-postgres/migrations#applied-versions
      (lambda (_%conn2640%_)
        (let ((_%rows2642%_
               (let ()
                 (declare (not safe))
                 (std/db/dbi#sql-eval-query
                  _%conn2640%_
                  '"SELECT version FROM _migrations ORDER BY version"))))
          (map (lambda (_%row2644%_) (vector-ref _%row2644%_ '0))
               _%rows2642%_))))
    (define jafourni/gerbil-postgres/migrations#migrate-up!
      (lambda (_%mgr2633%_)
        (let ((_%pending2635%_
               (jafourni/gerbil-postgres/migrations#pending-migrations
                _%mgr2633%_)))
          (jafourni/gerbil-postgres/migrations#with-advisory-lock
           (##direct-structure-ref
            _%mgr2633%_
            '1
            jafourni/gerbil-postgres/migrations#migrator::t
            '#f)
           (##direct-structure-ref
            _%mgr2633%_
            '3
            jafourni/gerbil-postgres/migrations#migrator::t
            '#f)
           (lambda ()
             (let ((__tmp6163
                    (lambda (_%m2638%_)
                      (jafourni/gerbil-postgres/migrations#apply-migration!
                       _%mgr2633%_
                       _%m2638%_))))
               (declare (not safe))
               (##for-each __tmp6163 _%pending2635%_))))
          (let () (declare (not safe)) (##length _%pending2635%_)))))
    (define jafourni/gerbil-postgres/migrations#migrate-up-to!
      (lambda (_%mgr2620%_ _%version2621%_)
        (let* ((_%pending2623%_
                (jafourni/gerbil-postgres/migrations#pending-migrations
                 _%mgr2620%_))
               (_%to-apply2627%_
                (let ((__tmp6164
                       (lambda (_%m2625%_)
                         (<= (##direct-structure-ref
                              _%m2625%_
                              '1
                              jafourni/gerbil-postgres/migrations#migration::t
                              '#f)
                             _%version2621%_))))
                  (declare (not safe))
                  (##filter __tmp6164 _%pending2623%_))))
          (jafourni/gerbil-postgres/migrations#with-advisory-lock
           (##direct-structure-ref
            _%mgr2620%_
            '1
            jafourni/gerbil-postgres/migrations#migrator::t
            '#f)
           (##direct-structure-ref
            _%mgr2620%_
            '3
            jafourni/gerbil-postgres/migrations#migrator::t
            '#f)
           (lambda ()
             (let ((__tmp6165
                    (lambda (_%m2631%_)
                      (jafourni/gerbil-postgres/migrations#apply-migration!
                       _%mgr2620%_
                       _%m2631%_))))
               (declare (not safe))
               (##for-each __tmp6165 _%to-apply2627%_))))
          (let () (declare (not safe)) (##length _%to-apply2627%_)))))
    (define jafourni/gerbil-postgres/migrations#migrate-down!__%
      (lambda (_%mgr2591%_ _%n2592%_)
        (let* ((_%conn2594%_
                (##direct-structure-ref
                 _%mgr2591%_
                 '1
                 jafourni/gerbil-postgres/migrations#migrator::t
                 '#f))
               (_%applied2596%_
                (let ((__tmp6166
                       (jafourni/gerbil-postgres/migrations#applied-versions
                        _%conn2594%_)))
                  (declare (not safe))
                  (##reverse __tmp6166)))
               (_%to-rollback2598%_
                (jafourni/gerbil-postgres/migrations#take-up-to
                 _%applied2596%_
                 _%n2592%_))
               (_%all-migrations2600%_
                (##direct-structure-ref
                 _%mgr2591%_
                 '2
                 jafourni/gerbil-postgres/migrations#migrator::t
                 '#f)))
          (jafourni/gerbil-postgres/migrations#with-advisory-lock
           _%conn2594%_
           (##direct-structure-ref
            _%mgr2591%_
            '3
            jafourni/gerbil-postgres/migrations#migrator::t
            '#f)
           (lambda ()
             (for-each
              (lambda (_%version2604%_)
                (let ((_%m2608%_
                       (let ((__tmp6167
                              (lambda (_%m2606%_)
                                (= (##direct-structure-ref
                                    _%m2606%_
                                    '1
                                    jafourni/gerbil-postgres/migrations#migration::t
                                    '#f)
                                   _%version2604%_))))
                         (declare (not safe))
                         (__find __tmp6167 _%all-migrations2600%_))))
                  (if _%m2608%_
                      (jafourni/gerbil-postgres/migrations#rollback-migration!
                       _%mgr2591%_
                       _%m2608%_)
                      '#!void)))
              _%to-rollback2598%_)))
          (length _%to-rollback2598%_))))
    (define jafourni/gerbil-postgres/migrations#migrate-down!__0
      (lambda (_%mgr2613%_)
        (let ((_%n2615%_ '1))
          (jafourni/gerbil-postgres/migrations#migrate-down!__%
           _%mgr2613%_
           _%n2615%_))))
    (define jafourni/gerbil-postgres/migrations#migrate-down!
      (lambda _g6168_
        (let ((_g6169_ (let () (declare (not safe)) (##length _g6168_))))
          (cond ((let () (declare (not safe)) (##fx= _g6169_ 1))
                 (apply jafourni/gerbil-postgres/migrations#migrate-down!__0
                        _g6168_))
                ((let () (declare (not safe)) (##fx= _g6169_ 2))
                 (apply jafourni/gerbil-postgres/migrations#migrate-down!__%
                        _g6168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  jafourni/gerbil-postgres/migrations#migrate-down!
                  _g6168_))))))
    (define jafourni/gerbil-postgres/migrations#migration-status
      (lambda (_%mgr2578%_)
        (let* ((_%conn2580%_
                (##direct-structure-ref
                 _%mgr2578%_
                 '1
                 jafourni/gerbil-postgres/migrations#migrator::t
                 '#f))
               (_%applied2582%_
                (jafourni/gerbil-postgres/migrations#applied-versions
                 _%conn2580%_)))
          (map (lambda (_%m2585%_)
                 (let ((_%ht2587%_
                        (let ()
                          (declare (not safe))
                          (make-hash-table__%
                           '#f
                           '3
                           absent-value
                           absent-value
                           absent-value
                           absent-value
                           absent-value
                           absent-value
                           absent-value))))
                   (let ((__tmp6170
                          (##direct-structure-ref
                           _%m2585%_
                           '1
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (__hash-put! _%ht2587%_ 'version __tmp6170))
                   (let ((__tmp6171
                          (##direct-structure-ref
                           _%m2585%_
                           '2
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (__hash-put! _%ht2587%_ 'name __tmp6171))
                   (let ((__tmp6172
                          (let ((__tmp6173
                                 (##direct-structure-ref
                                  _%m2585%_
                                  '1
                                  jafourni/gerbil-postgres/migrations#migration::t
                                  '#f)))
                            (declare (not safe))
                            (##member __tmp6173 _%applied2582%_))))
                     (declare (not safe))
                     (__hash-put! _%ht2587%_ 'applied __tmp6172))
                   _%ht2587%_))
               (##direct-structure-ref
                _%mgr2578%_
                '2
                jafourni/gerbil-postgres/migrations#migrator::t
                '#f)))))
    (define jafourni/gerbil-postgres/migrations#pending-migrations
      (lambda (_%mgr2572%_)
        (let ((_%applied2574%_
               (jafourni/gerbil-postgres/migrations#applied-versions
                (##direct-structure-ref
                 _%mgr2572%_
                 '1
                 jafourni/gerbil-postgres/migrations#migrator::t
                 '#f))))
          (filter (lambda (_%m2576%_)
                    (not (let ((__tmp6174
                                (##direct-structure-ref
                                 _%m2576%_
                                 '1
                                 jafourni/gerbil-postgres/migrations#migration::t
                                 '#f)))
                           (declare (not safe))
                           (##member __tmp6174 _%applied2574%_))))
                  (##direct-structure-ref
                   _%mgr2572%_
                   '2
                   jafourni/gerbil-postgres/migrations#migrator::t
                   '#f)))))
    (define jafourni/gerbil-postgres/migrations#apply-migration!
      (lambda (_%mgr2566%_ _%m2567%_)
        (let ((_%conn2569%_
               (##direct-structure-ref
                _%mgr2566%_
                '1
                jafourni/gerbil-postgres/migrations#migrator::t
                '#f)))
          (let ((__tmp6176
                 (##direct-structure-ref
                  _%m2567%_
                  '1
                  jafourni/gerbil-postgres/migrations#migration::t
                  '#f))
                (__tmp6175
                 (##direct-structure-ref
                  _%m2567%_
                  '2
                  jafourni/gerbil-postgres/migrations#migration::t
                  '#f)))
            (declare (not safe))
            (jafourni/gerbil-postgres/logging#infof
             '"applying migration ~a: ~a"
             __tmp6176
             __tmp6175))
          (let ((__tmp6177
                 (lambda ()
                   (let ((__tmp6178
                          (##direct-structure-ref
                           _%m2567%_
                           '3
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (std/db/dbi#sql-eval _%conn2569%_ __tmp6178))
                   (let ((__tmp6181
                          (##direct-structure-ref
                           _%m2567%_
                           '1
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f))
                         (__tmp6180
                          (##direct-structure-ref
                           _%m2567%_
                           '2
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f))
                         (__tmp6179
                          (##direct-structure-ref
                           _%m2567%_
                           '5
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (std/db/dbi#sql-eval
                      _%conn2569%_
                      '"INSERT INTO _migrations (version, name, checksum) VALUES ($1, $2, $3)"
                      __tmp6181
                      __tmp6180
                      __tmp6179)))))
            (declare (not safe))
            (jafourni/gerbil-postgres/transactions#call-with-transaction__%
             '#f
             absent-value
             absent-value
             _%conn2569%_
             __tmp6177)))))
    (define jafourni/gerbil-postgres/migrations#rollback-migration!
      (lambda (_%mgr2560%_ _%m2561%_)
        (let ((_%conn2563%_
               (##direct-structure-ref
                _%mgr2560%_
                '1
                jafourni/gerbil-postgres/migrations#migrator::t
                '#f)))
          (if (##direct-structure-ref
               _%m2561%_
               '4
               jafourni/gerbil-postgres/migrations#migration::t
               '#f)
              '#!void
              (let ((__tmp6182
                     (##direct-structure-ref
                      _%m2561%_
                      '1
                      jafourni/gerbil-postgres/migrations#migration::t
                      '#f)))
                (declare (not safe))
                (error '"No down migration for version" __tmp6182)))
          (let ((__tmp6184
                 (##direct-structure-ref
                  _%m2561%_
                  '1
                  jafourni/gerbil-postgres/migrations#migration::t
                  '#f))
                (__tmp6183
                 (##direct-structure-ref
                  _%m2561%_
                  '2
                  jafourni/gerbil-postgres/migrations#migration::t
                  '#f)))
            (declare (not safe))
            (jafourni/gerbil-postgres/logging#infof
             '"rolling back migration ~a: ~a"
             __tmp6184
             __tmp6183))
          (let ((__tmp6185
                 (lambda ()
                   (let ((__tmp6186
                          (##direct-structure-ref
                           _%m2561%_
                           '4
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (std/db/dbi#sql-eval _%conn2563%_ __tmp6186))
                   (let ((__tmp6187
                          (##direct-structure-ref
                           _%m2561%_
                           '1
                           jafourni/gerbil-postgres/migrations#migration::t
                           '#f)))
                     (declare (not safe))
                     (std/db/dbi#sql-eval
                      _%conn2563%_
                      '"DELETE FROM _migrations WHERE version = $1"
                      __tmp6187)))))
            (declare (not safe))
            (jafourni/gerbil-postgres/transactions#call-with-transaction__%
             '#f
             absent-value
             absent-value
             _%conn2563%_
             __tmp6185)))))
    (define jafourni/gerbil-postgres/migrations#take-up-to
      (lambda (_%lst2548%_ _%n2549%_)
        (let _%lp2551%_ ((_%rest2553%_ _%lst2548%_)
                         (_%n2554%_ _%n2549%_)
                         (_%acc2555%_ '()))
          (if (or (null? _%rest2553%_) (<= _%n2554%_ '0))
              (reverse _%acc2555%_)
              (_%lp2551%_
               (cdr _%rest2553%_)
               (- _%n2554%_ '1)
               (cons (car _%rest2553%_) _%acc2555%_))))))))
