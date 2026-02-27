(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/types::timestamp 1772159943)
  (begin
    (define jafourni/gerbil-postgres/types#serialize-json
      (lambda (_%obj489%_)
        (let ()
          (declare (not safe))
          (std/text/json/util#json-object->string _%obj489%_))))
    (define jafourni/gerbil-postgres/types#deserialize-json
      (lambda (_%str487%_)
        (let ()
          (declare (not safe))
          (std/text/json/util#string->json-object _%str487%_))))
    (define jafourni/gerbil-postgres/types#+uuid-rx+
      (let ()
        (declare (not safe))
        (std/pregexp#pregexp
         '"^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$")))
    (define jafourni/gerbil-postgres/types#serialize-uuid
      (lambda (_%str485%_)
        (if (and (string? _%str485%_)
                 (let ()
                   (declare (not safe))
                   (std/pregexp#pregexp-match
                    jafourni/gerbil-postgres/types#+uuid-rx+
                    _%str485%_)))
            _%str485%_
            (let ()
              (declare (not safe))
              (error '"Invalid UUID format" _%str485%_)))))
    (define jafourni/gerbil-postgres/types#deserialize-uuid
      (lambda (_%str483%_) _%str483%_))
    (define jafourni/gerbil-postgres/types#serialize-bytea
      (lambda (_%bv470%_)
        (if (u8vector? _%bv470%_)
            (let* ((_%len472%_
                    (let ()
                      (declare (not safe))
                      (##u8vector-length _%bv470%_)))
                   (_%out474%_ (open-output-string)))
              (write-string '"\\x" _%out474%_)
              (let _%lp477%_ ((_%i479%_ '0))
                (if (< _%i479%_ _%len472%_)
                    (let ((_%byte481%_ (u8vector-ref _%bv470%_ _%i479%_)))
                      (if (< _%byte481%_ '16)
                          (write-char '#\0 _%out474%_)
                          '#!void)
                      (write-string
                       (let ()
                         (declare (not safe))
                         (##number->string _%byte481%_ '16))
                       _%out474%_)
                      (_%lp477%_ (+ _%i479%_ '1)))
                    '#!void))
              (get-output-string _%out474%_))
            (let ()
              (declare (not safe))
              (error '"Expected u8vector for BYTEA" _%bv470%_)))))
    (define jafourni/gerbil-postgres/types#deserialize-bytea
      (lambda (_%str453%_)
        (if (and (string? _%str453%_)
                 (>= (let () (declare (not safe)) (##string-length _%str453%_))
                     '2)
                 (let ((__tmp5741 (substring _%str453%_ '0 '2)))
                   (declare (not safe))
                   (##string=? __tmp5741 '"\\x")))
            (let* ((_%hex456%_
                    (substring _%str453%_ '2 (string-length _%str453%_)))
                   (_%len458%_
                    (quotient
                     (let () (declare (not safe)) (##string-length _%hex456%_))
                     '2))
                   (_%bv460%_ (make-u8vector _%len458%_)))
              (let _%lp463%_ ((_%i465%_ '0))
                (if (< _%i465%_ _%len458%_)
                    (let ((_%byte467%_
                           (let ((__tmp5742
                                  (substring
                                   _%hex456%_
                                   (* _%i465%_ '2)
                                   (+ (* _%i465%_ '2) '2))))
                             (declare (not safe))
                             (##string->number __tmp5742 '16))))
                      (u8vector-set! _%bv460%_ _%i465%_ _%byte467%_)
                      (_%lp463%_ (+ _%i465%_ '1)))
                    '#!void))
              _%bv460%_)
            _%str453%_)))
    (define jafourni/gerbil-postgres/types#serialize-pg-array
      (lambda (_%lst436%_)
        (if (list? _%lst436%_)
            (let ((_%out438%_ (open-output-string)))
              (write-char '#\{ _%out438%_)
              (let _%lp440%_ ((_%rest442%_ _%lst436%_) (_%first?443%_ '#t))
                (if (pair? _%rest442%_)
                    (begin
                      (if _%first?443%_ '#!void (write-char '#\, _%out438%_))
                      (let ((_%elem445%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest442%_))))
                        (if (not _%elem445%_)
                            (write-string '"NULL" _%out438%_)
                            (if (string? _%elem445%_)
                                (let ()
                                  (write-char '#\" _%out438%_)
                                  (write-string
                                   (jafourni/gerbil-postgres/types#pg-escape-array-string
                                    _%elem445%_)
                                   _%out438%_)
                                  (write-char '#\" _%out438%_))
                                (if (number? _%elem445%_)
                                    (write-string
                                     (let ()
                                       (declare (not safe))
                                       (##number->string _%elem445%_))
                                     _%out438%_)
                                    (if (boolean? _%elem445%_)
                                        (write-string
                                         (if _%elem445%_ '"t" '"f")
                                         _%out438%_)
                                        (let ()
                                          (write-char '#\" _%out438%_)
                                          (write-string
                                           (jafourni/gerbil-postgres/types#pg-escape-array-string
                                            (with-output-to-string
                                             (lambda ()
                                               (display _%elem445%_))))
                                           _%out438%_)
                                          (write-char '#\" _%out438%_)))))))
                      (_%lp440%_
                       (let () (declare (not safe)) (##cdr _%rest442%_))
                       '#f))
                    '#!void))
              (write-char '#\} _%out438%_)
              (get-output-string _%out438%_))
            (let ()
              (declare (not safe))
              (error '"Expected list for PostgreSQL array" _%lst436%_)))))
    (define jafourni/gerbil-postgres/types#pg-escape-array-string
      (lambda (_%str423%_)
        (let ((_%out425%_ (open-output-string)))
          (let _%lp427%_ ((_%i429%_ '0))
            (if (< _%i429%_ (string-length _%str423%_))
                (let ((_%c431%_ (string-ref _%str423%_ _%i429%_)))
                  (if (or (let ()
                            (declare (not safe))
                            (##char=? _%c431%_ '#\\))
                          (let ()
                            (declare (not safe))
                            (##char=? _%c431%_ '#\")))
                      (write-char '#\\ _%out425%_)
                      '#!void)
                  (write-char _%c431%_ _%out425%_)
                  (_%lp427%_ (+ _%i429%_ '1)))
                '#!void))
          (get-output-string _%out425%_))))
    (define jafourni/gerbil-postgres/types#deserialize-pg-array
      (lambda (_%str421%_)
        (if (and (string? _%str421%_)
                 (> (let () (declare (not safe)) (##string-length _%str421%_))
                    '0)
                 (let ((__tmp5743 (string-ref _%str421%_ '0)))
                   (declare (not safe))
                   (##char=? __tmp5743 '#\{)))
            (jafourni/gerbil-postgres/types#pg-parse-array _%str421%_)
            _%str421%_)))
    (define jafourni/gerbil-postgres/types#pg-parse-array
      (lambda (_%str399%_)
        (let ((_%len401%_ (string-length _%str399%_))
              (_%pos402%_ '1)
              (_%result403%_ '()))
          (let _%lp405%_ ((_%pos407%_ _%pos402%_)
                          (_%result408%_ _%result403%_))
            (if (>= _%pos407%_ _%len401%_)
                (reverse _%result408%_)
                (if (let ((__tmp5744 (string-ref _%str399%_ _%pos407%_)))
                      (declare (not safe))
                      (##char=? __tmp5744 '#\}))
                    (reverse _%result408%_)
                    (if (let ((__tmp5745 (string-ref _%str399%_ _%pos407%_)))
                          (declare (not safe))
                          (##char=? __tmp5745 '#\,))
                        (_%lp405%_ (+ _%pos407%_ '1) _%result408%_)
                        (if (let ((__tmp5746
                                   (string-ref _%str399%_ _%pos407%_)))
                              (declare (not safe))
                              (##char=? __tmp5746 '#\"))
                            (let ((_g5747_ (jafourni/gerbil-postgres/types#pg-parse-quoted-element
                                            _%str399%_
                                            (+ _%pos407%_ '1))))
                              (begin
                                (let ((_g5748_ (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g5747_)
                                                     (##values-length _g5747_)
                                                     1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g5748_ 2)))
                                      (error "Context expects 2 values"
                                             _g5748_)))
                                (let ((_%elem414%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g5747_ 0)))
                                      (_%next-pos415%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g5747_ 1))))
                                  (_%lp405%_
                                   _%next-pos415%_
                                   (cons _%elem414%_ _%result408%_)))))
                            (let ((_g5749_ (jafourni/gerbil-postgres/types#pg-parse-unquoted-element
                                            _%str399%_
                                            _%pos407%_)))
                              (begin
                                (let ((_g5750_ (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g5749_)
                                                     (##values-length _g5749_)
                                                     1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g5750_ 2)))
                                      (error "Context expects 2 values"
                                             _g5750_)))
                                (let ((_%elem418%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g5749_ 0)))
                                      (_%next-pos419%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g5749_ 1))))
                                  (_%lp405%_
                                   _%next-pos419%_
                                   (cons (if (string=? _%elem418%_ '"NULL")
                                             '#f
                                             _%elem418%_)
                                         _%result408%_)))))))))))))
    (define jafourni/gerbil-postgres/types#pg-parse-quoted-element
      (lambda (_%str385%_ _%pos386%_)
        (let ((_%out388%_ (open-output-string)))
          (let _%lp390%_ ((_%i392%_ _%pos386%_))
            (if (>= _%i392%_ (string-length _%str385%_))
                (values (get-output-string _%out388%_) _%i392%_)
                (let ((_%c394%_ (string-ref _%str385%_ _%i392%_)))
                  (if (let () (declare (not safe)) (##char=? _%c394%_ '#\\))
                      (let ()
                        (if (< (+ _%i392%_ '1) (string-length _%str385%_))
                            (write-char
                             (string-ref _%str385%_ (+ _%i392%_ '1))
                             _%out388%_)
                            '#!void)
                        (_%lp390%_ (+ _%i392%_ '2)))
                      (if (let ()
                            (declare (not safe))
                            (##char=? _%c394%_ '#\"))
                          (values (get-output-string _%out388%_)
                                  (+ _%i392%_ '1))
                          (let ()
                            (write-char _%c394%_ _%out388%_)
                            (_%lp390%_ (+ _%i392%_ '1)))))))))))
    (define jafourni/gerbil-postgres/types#pg-parse-unquoted-element
      (lambda (_%str372%_ _%pos373%_)
        (let _%lp375%_ ((_%i377%_ _%pos373%_))
          (if (or (>= _%i377%_ (string-length _%str372%_))
                  (let ((__tmp5751 (string-ref _%str372%_ _%i377%_)))
                    (declare (not safe))
                    (##char=? __tmp5751 '#\,))
                  (let ((__tmp5752 (string-ref _%str372%_ _%i377%_)))
                    (declare (not safe))
                    (##char=? __tmp5752 '#\})))
              (values (substring _%str372%_ _%pos373%_ _%i377%_) _%i377%_)
              (_%lp375%_ (+ _%i377%_ '1))))))
    (define jafourni/gerbil-postgres/types#pg-catalog
      (let ((__obj5740
             (let ()
               (declare (not safe))
               (##structure std/db/postgresql#catalog::t '#f '#f))))
        (let ()
          (declare (not safe))
          (std/db/postgresql#catalog:::init!
           __obj5740
           std/db/postgresql#default-catalog))
        __obj5740))
    (let ((__tmp5753
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5753 '114 jafourni/gerbil-postgres/types#serialize-json))
    (let ((__tmp5754
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5754
       '114
       jafourni/gerbil-postgres/types#deserialize-json))
    (let ((__tmp5755
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5755
       '3802
       jafourni/gerbil-postgres/types#serialize-json))
    (let ((__tmp5756
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5756
       '3802
       jafourni/gerbil-postgres/types#deserialize-json))
    (let ((__tmp5757
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5757
       '2950
       jafourni/gerbil-postgres/types#serialize-uuid))
    (let ((__tmp5758
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5758
       '2950
       jafourni/gerbil-postgres/types#deserialize-uuid))
    (let ((__tmp5759
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5759 '17 jafourni/gerbil-postgres/types#serialize-bytea))
    (let ((__tmp5760
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5760
       '17
       jafourni/gerbil-postgres/types#deserialize-bytea))
    (let ((__tmp5761
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5761
       '1007
       jafourni/gerbil-postgres/types#serialize-pg-array))
    (let ((__tmp5762
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5762
       '1007
       jafourni/gerbil-postgres/types#deserialize-pg-array))
    (let ((__tmp5763
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5763
       '1009
       jafourni/gerbil-postgres/types#serialize-pg-array))
    (let ((__tmp5764
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5764
       '1009
       jafourni/gerbil-postgres/types#deserialize-pg-array))
    (let ((__tmp5765
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5765
       '1022
       jafourni/gerbil-postgres/types#serialize-pg-array))
    (let ((__tmp5766
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put!
       __tmp5766
       '1022
       jafourni/gerbil-postgres/types#deserialize-pg-array))
    (let ((__tmp5767
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5767 '869 identity))
    (let ((__tmp5768
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5768 '650 identity))
    (let ((__tmp5769
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5769 '869 identity))
    (let ((__tmp5770
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5770 '650 identity))
    (let ((__tmp5771
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5771 '829 identity))
    (let ((__tmp5772
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5772 '829 identity))
    (let ((__tmp5773
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5773 '1186 identity))
    (let ((__tmp5774
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5774 '1186 identity))
    (let ((__tmp5775
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5775 '26 number->string))
    (let ((__tmp5776
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5776 '26 string->number))
    (let ((__tmp5777
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '1
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5777 '2278 identity))
    (let ((__tmp5778
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref
              jafourni/gerbil-postgres/types#pg-catalog
              '2
              '#f
              '#f))))
      (declare (not safe))
      (hash-put! __tmp5778 '2278 identity))
    (define jafourni/gerbil-postgres/types#with-pg-types
      (lambda (_%thunk369%_)
        (let ((__tmp5779 (lambda () (_%thunk369%_))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp5779
           std/db/postgresql#current-catalog
           jafourni/gerbil-postgres/types#pg-catalog))))))
