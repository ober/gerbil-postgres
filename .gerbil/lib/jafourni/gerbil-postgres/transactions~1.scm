(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |jafourni/gerbil-postgres/transactions[:0:]#with-transaction|
    (lambda (_%$stx1307%_)
      (let* ((_%__stx58685869%_ _%$stx1307%_)
             (_%g13121366%_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx58685869%_)))))
        (let ((_%__kont58715872%_
               (lambda (_%L1549%_ _%L1551%_ _%L1552%_)
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'call-with-transaction))
                       (cons _%L1552%_
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'lambda))
                                         (cons '()
                                               (let ((__tmp6005
                                                      (lambda (_%g15751580%_
                                                               _%g15761583%_)
                                                        (cons _%g15751580%_
                                                              _%g15761583%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp6005
                                                  '()
                                                  _%L1549%_))))
                                   (let ((__tmp6006
                                          (lambda (_%g15771586%_ _%g15781589%_)
                                            (cons _%g15771586%_
                                                  _%g15781589%_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp6006 '() _%L1551%_)))))))
              (_%__kont58775878%_
               (lambda (_%L1423%_ _%L1425%_)
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'call-with-transaction))
                       (cons _%L1425%_
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'lambda))
                                         (cons '()
                                               (let ((__tmp6007
                                                      (lambda (_%g14431446%_
                                                               _%g14441449%_)
                                                        (cons _%g14431446%_
                                                              _%g14441449%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp6007
                                                  '()
                                                  _%L1423%_))))
                                   '()))))))
          (let* ((_%__match59275928%_
                  (lambda (_%e13461373%_
                           _%hd13471377%_
                           _%tl13481380%_
                           _%e13491383%_
                           _%hd13501387%_
                           _%tl13511390%_
                           _%__splice58795880%_
                           _%target13521393%_
                           _%tl13541396%_)
                    (letrec ((_%loop13551399%_
                              (lambda (_%hd13531403%_ _%body13591406%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd13531403%_))
                                    (let ((_%e13561409%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%hd13531403%_))))
                                      (let ((_%lp-tl13581416%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e13561409%_)))
                                            (_%lp-hd13571413%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e13561409%_))))
                                        (_%loop13551399%_
                                         _%lp-tl13581416%_
                                         (cons _%lp-hd13571413%_
                                               _%body13591406%_))))
                                    (let ((_%body13601419%_
                                           (reverse _%body13591406%_)))
                                      (_%__kont58775878%_
                                       _%body13601419%_
                                       _%hd13501387%_))))))
                      (_%loop13551399%_ _%target13521393%_ '()))))
                 (_%__match59195920%_
                  (lambda (_%e13461373%_
                           _%hd13471377%_
                           _%tl13481380%_
                           _%e13491383%_
                           _%hd13501387%_
                           _%tl13511390%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl13511390%_))
                        (let ((_%__splice58795880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%tl13511390%_
                                  '0))))
                          (let ((_%tl13541396%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice58795880%_ '1)))
                                (_%target13521393%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice58795880%_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl13541396%_))
                                (_%__match59275928%_
                                 _%e13461373%_
                                 _%hd13471377%_
                                 _%tl13481380%_
                                 _%e13491383%_
                                 _%hd13501387%_
                                 _%tl13511390%_
                                 _%__splice58795880%_
                                 _%target13521393%_
                                 _%tl13541396%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g13121366%_)))))
                        (let () (declare (not safe)) (_%g13121366%_)))))
                 (_%__match59075908%_
                  (lambda (_%e13171459%_
                           _%hd13181463%_
                           _%tl13191466%_
                           _%e13201469%_
                           _%hd13211473%_
                           _%tl13221476%_
                           _%e13231479%_
                           _%hd13241483%_
                           _%tl13251486%_
                           _%__splice58735874%_
                           _%target13261489%_
                           _%tl13281492%_)
                    (letrec ((_%loop13291495%_
                              (lambda (_%hd13271499%_ _%opts13331502%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd13271499%_))
                                    (let ((_%e13301505%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%hd13271499%_))))
                                      (let ((_%lp-tl13321512%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e13301505%_)))
                                            (_%lp-hd13311509%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e13301505%_))))
                                        (_%loop13291495%_
                                         _%lp-tl13321512%_
                                         (cons _%lp-hd13311509%_
                                               _%opts13331502%_))))
                                    (let ((_%opts13341515%_
                                           (reverse _%opts13331502%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _%tl13251486%_))
                                          (let ((_%__splice58755876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice->vector
                                                    _%tl13251486%_
                                                    '0))))
                                            (let ((_%tl13371522%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice58755876%_
                                                      '1)))
                                                  (_%target13351519%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice58755876%_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl13371522%_))
                                                  (letrec ((_%loop13381525%_
                                                            (lambda (_%hd13361529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body13421532%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd13361529%_))
                          (let ((_%e13391535%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%hd13361529%_))))
                            (let ((_%lp-tl13411542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e13391535%_)))
                                  (_%lp-hd13401539%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e13391535%_))))
                              (_%loop13381525%_
                               _%lp-tl13411542%_
                               (cons _%lp-hd13401539%_ _%body13421532%_))))
                          (let ((_%body13431545%_ (reverse _%body13421532%_)))
                            (_%__kont58715872%_
                             _%body13431545%_
                             _%opts13341515%_
                             _%hd13211473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop13381525%_
                                                     _%target13351519%_
                                                     '()))
                                                  (_%__match59195920%_
                                                   _%e13171459%_
                                                   _%hd13181463%_
                                                   _%tl13191466%_
                                                   _%e13201469%_
                                                   _%hd13211473%_
                                                   _%tl13221476%_))))
                                          (_%__match59195920%_
                                           _%e13171459%_
                                           _%hd13181463%_
                                           _%tl13191466%_
                                           _%e13201469%_
                                           _%hd13211473%_
                                           _%tl13221476%_)))))))
                      (_%loop13291495%_ _%target13261489%_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? _%__stx58685869%_))
                (let ((_%e13171459%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx58685869%_))))
                  (let ((_%tl13191466%_
                         (let () (declare (not safe)) (##cdr _%e13171459%_)))
                        (_%hd13181463%_
                         (let () (declare (not safe)) (##car _%e13171459%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl13191466%_))
                        (let ((_%e13201469%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl13191466%_))))
                          (let ((_%tl13221476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e13201469%_)))
                                (_%hd13211473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e13201469%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl13221476%_))
                                (let ((_%e13231479%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl13221476%_))))
                                  (let ((_%tl13251486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e13231479%_)))
                                        (_%hd13241483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e13231479%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _%hd13241483%_))
                                        (let ((_%__splice58735874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd13241483%_
                                                  '0))))
                                          (let ((_%tl13281492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice58735874%_
                                                    '1)))
                                                (_%target13261489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice58735874%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl13281492%_))
                                                (_%__match59075908%_
                                                 _%e13171459%_
                                                 _%hd13181463%_
                                                 _%tl13191466%_
                                                 _%e13201469%_
                                                 _%hd13211473%_
                                                 _%tl13221476%_
                                                 _%e13231479%_
                                                 _%hd13241483%_
                                                 _%tl13251486%_
                                                 _%__splice58735874%_
                                                 _%target13261489%_
                                                 _%tl13281492%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%tl13221476%_))
                                                    (let ((_%__splice58795880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%tl13221476%_
                                                              '0))))
                                                      (let ((_%tl13541396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice58795880%_ '1)))
                    (_%target13521393%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice58795880%_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _%tl13541396%_))
                    (_%__match59275928%_
                     _%e13171459%_
                     _%hd13181463%_
                     _%tl13191466%_
                     _%e13201469%_
                     _%hd13211473%_
                     _%tl13221476%_
                     _%__splice58795880%_
                     _%target13521393%_
                     _%tl13541396%_)
                    (let () (declare (not safe)) (_%g13121366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g13121366%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl13221476%_))
                                            (let ((_%__splice58795880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice->vector
                                                      _%tl13221476%_
                                                      '0))))
                                              (let ((_%tl13541396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice58795880%_
                                                        '1)))
                                                    (_%target13521393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice58795880%_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl13541396%_))
                                                    (_%__match59275928%_
                                                     _%e13171459%_
                                                     _%hd13181463%_
                                                     _%tl13191466%_
                                                     _%e13201469%_
                                                     _%hd13211473%_
                                                     _%tl13221476%_
                                                     _%__splice58795880%_
                                                     _%target13521393%_
                                                     _%tl13541396%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g13121366%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g13121366%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl13221476%_))
                                    (let ((_%__splice58795880%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl13221476%_
                                              '0))))
                                      (let ((_%tl13541396%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice58795880%_
                                                '1)))
                                            (_%target13521393%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice58795880%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _%tl13541396%_))
                                            (_%__match59275928%_
                                             _%e13171459%_
                                             _%hd13181463%_
                                             _%tl13191466%_
                                             _%e13201469%_
                                             _%hd13211473%_
                                             _%tl13221476%_
                                             _%__splice58795880%_
                                             _%target13521393%_
                                             _%tl13541396%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g13121366%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g13121366%_))))))
                        (let () (declare (not safe)) (_%g13121366%_)))))
                (let () (declare (not safe)) (_%g13121366%_))))))))
  (define |jafourni/gerbil-postgres/transactions[:0:]#with-savepoint|
    (lambda (_%$stx1599%_)
      (let* ((_%g16031631%_
              (lambda (_%g16041627%_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g16041627%_))))
             (_%g16021730%_
              (lambda (_%g16041635%_)
                (if (let () (declare (not safe)) (gx#stx-pair? _%g16041635%_))
                    (let ((_%e16081638%_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g16041635%_))))
                      (let ((_%hd16091642%_
                             (let ()
                               (declare (not safe))
                               (##car _%e16081638%_)))
                            (_%tl16101645%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e16081638%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl16101645%_))
                            (let ((_%e16111648%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl16101645%_))))
                              (let ((_%hd16121652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e16111648%_)))
                                    (_%tl16131655%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e16111648%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl16131655%_))
                                    (let ((_%e16141658%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%tl16131655%_))))
                                      (let ((_%hd16151662%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e16141658%_)))
                                            (_%tl16161665%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e16141658%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl16161665%_))
                                            (let ((_g6008_ (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%tl16161665%_
                                                              '0))))
                                              (begin
                                                (let ((_g6009_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g6008_)
                             (##values-length _g6008_)
                             1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g6009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g6009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target16171668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g6008_
                                                          0)))
                                                      (_%tl16191671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g6008_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl16191671%_))
                                                      (letrec ((_%loop16201674%_
                                                                (lambda (_%hd16181678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body16241681%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd16181678%_))
                              (let ((_%e16211684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd16181678%_))))
                                (let ((_%lp-hd16221688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e16211684%_)))
                                      (_%lp-tl16231691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e16211684%_))))
                                  (_%loop16201674%_
                                   _%lp-tl16231691%_
                                   (cons _%lp-hd16221688%_ _%body16241681%_))))
                              (let ((_%body16251694%_
                                     (reverse _%body16241681%_)))
                                ((lambda (_%L1698%_ _%L1700%_ _%L1701%_)
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'pg-savepoint))
                                         (cons _%L1701%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L1700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'lambda))
                         (cons '()
                               (let ((__tmp6010
                                      (lambda (_%g17211724%_ _%g17221727%_)
                                        (cons _%g17211724%_ _%g17221727%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp6010 '() _%L1698%_))))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%body16251694%_
                                 _%hd16151662%_
                                 _%hd16121652%_))))))
                (_%loop16201674%_ _%target16171668%_ '()))
              (_%g16031631%_ _%g16041635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g16031631%_ _%g16041635%_))))
                                    (_%g16031631%_ _%g16041635%_))))
                            (_%g16031631%_ _%g16041635%_))))
                    (_%g16031631%_ _%g16041635%_)))))
        (_%g16021730%_ _%$stx1599%_))))
  (define |jafourni/gerbil-postgres/transactions[:0:]#with-serializable-retry|
    (lambda (_%$stx1735%_)
      (let* ((_%__stx59305931%_ _%$stx1735%_)
             (_%g17401794%_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx59305931%_)))))
        (let ((_%__kont59335934%_
               (lambda (_%L1976%_ _%L1978%_ _%L1979%_)
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0
                          '#f
                          'call-with-serializable-retry))
                       (cons _%L1979%_
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'lambda))
                                         (cons '()
                                               (let ((__tmp6011
                                                      (lambda (_%g20022007%_
                                                               _%g20032010%_)
                                                        (cons _%g20022007%_
                                                              _%g20032010%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp6011
                                                  '()
                                                  _%L1976%_))))
                                   (let ((__tmp6012
                                          (lambda (_%g20042013%_ _%g20052016%_)
                                            (cons _%g20042013%_
                                                  _%g20052016%_))))
                                     (declare (not safe))
                                     (__foldr1 __tmp6012 '() _%L1978%_)))))))
              (_%__kont59395940%_
               (lambda (_%L1851%_ _%L1853%_)
                 (cons (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0
                          '#f
                          'call-with-serializable-retry))
                       (cons _%L1853%_
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'lambda))
                                         (cons '()
                                               (let ((__tmp6013
                                                      (lambda (_%g18701873%_
                                                               _%g18711876%_)
                                                        (cons _%g18701873%_
                                                              _%g18711876%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp6013
                                                  '()
                                                  _%L1851%_))))
                                   '()))))))
          (let* ((_%__match59895990%_
                  (lambda (_%e17741801%_
                           _%hd17751805%_
                           _%tl17761808%_
                           _%e17771811%_
                           _%hd17781815%_
                           _%tl17791818%_
                           _%__splice59415942%_
                           _%target17801821%_
                           _%tl17821824%_)
                    (letrec ((_%loop17831827%_
                              (lambda (_%hd17811831%_ _%body17871834%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd17811831%_))
                                    (let ((_%e17841837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%hd17811831%_))))
                                      (let ((_%lp-tl17861844%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e17841837%_)))
                                            (_%lp-hd17851841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e17841837%_))))
                                        (_%loop17831827%_
                                         _%lp-tl17861844%_
                                         (cons _%lp-hd17851841%_
                                               _%body17871834%_))))
                                    (let ((_%body17881847%_
                                           (reverse _%body17871834%_)))
                                      (_%__kont59395940%_
                                       _%body17881847%_
                                       _%hd17781815%_))))))
                      (_%loop17831827%_ _%target17801821%_ '()))))
                 (_%__match59815982%_
                  (lambda (_%e17741801%_
                           _%hd17751805%_
                           _%tl17761808%_
                           _%e17771811%_
                           _%hd17781815%_
                           _%tl17791818%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl17791818%_))
                        (let ((_%__splice59415942%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%tl17791818%_
                                  '0))))
                          (let ((_%tl17821824%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice59415942%_ '1)))
                                (_%target17801821%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice59415942%_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl17821824%_))
                                (_%__match59895990%_
                                 _%e17741801%_
                                 _%hd17751805%_
                                 _%tl17761808%_
                                 _%e17771811%_
                                 _%hd17781815%_
                                 _%tl17791818%_
                                 _%__splice59415942%_
                                 _%target17801821%_
                                 _%tl17821824%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g17401794%_)))))
                        (let () (declare (not safe)) (_%g17401794%_)))))
                 (_%__match59695970%_
                  (lambda (_%e17451886%_
                           _%hd17461890%_
                           _%tl17471893%_
                           _%e17481896%_
                           _%hd17491900%_
                           _%tl17501903%_
                           _%e17511906%_
                           _%hd17521910%_
                           _%tl17531913%_
                           _%__splice59355936%_
                           _%target17541916%_
                           _%tl17561919%_)
                    (letrec ((_%loop17571922%_
                              (lambda (_%hd17551926%_ _%opts17611929%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd17551926%_))
                                    (let ((_%e17581932%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%hd17551926%_))))
                                      (let ((_%lp-tl17601939%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e17581932%_)))
                                            (_%lp-hd17591936%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e17581932%_))))
                                        (_%loop17571922%_
                                         _%lp-tl17601939%_
                                         (cons _%lp-hd17591936%_
                                               _%opts17611929%_))))
                                    (let ((_%opts17621942%_
                                           (reverse _%opts17611929%_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _%tl17531913%_))
                                          (let ((_%__splice59375938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice->vector
                                                    _%tl17531913%_
                                                    '0))))
                                            (let ((_%tl17651949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice59375938%_
                                                      '1)))
                                                  (_%target17631946%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice59375938%_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl17651949%_))
                                                  (letrec ((_%loop17661952%_
                                                            (lambda (_%hd17641956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body17701959%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd17641956%_))
                          (let ((_%e17671962%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%hd17641956%_))))
                            (let ((_%lp-tl17691969%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e17671962%_)))
                                  (_%lp-hd17681966%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e17671962%_))))
                              (_%loop17661952%_
                               _%lp-tl17691969%_
                               (cons _%lp-hd17681966%_ _%body17701959%_))))
                          (let ((_%body17711972%_ (reverse _%body17701959%_)))
                            (_%__kont59335934%_
                             _%body17711972%_
                             _%opts17621942%_
                             _%hd17491900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop17661952%_
                                                     _%target17631946%_
                                                     '()))
                                                  (_%__match59815982%_
                                                   _%e17451886%_
                                                   _%hd17461890%_
                                                   _%tl17471893%_
                                                   _%e17481896%_
                                                   _%hd17491900%_
                                                   _%tl17501903%_))))
                                          (_%__match59815982%_
                                           _%e17451886%_
                                           _%hd17461890%_
                                           _%tl17471893%_
                                           _%e17481896%_
                                           _%hd17491900%_
                                           _%tl17501903%_)))))))
                      (_%loop17571922%_ _%target17541916%_ '())))))
            (if (let () (declare (not safe)) (gx#stx-pair? _%__stx59305931%_))
                (let ((_%e17451886%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx59305931%_))))
                  (let ((_%tl17471893%_
                         (let () (declare (not safe)) (##cdr _%e17451886%_)))
                        (_%hd17461890%_
                         (let () (declare (not safe)) (##car _%e17451886%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl17471893%_))
                        (let ((_%e17481896%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl17471893%_))))
                          (let ((_%tl17501903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e17481896%_)))
                                (_%hd17491900%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e17481896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl17501903%_))
                                (let ((_%e17511906%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl17501903%_))))
                                  (let ((_%tl17531913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e17511906%_)))
                                        (_%hd17521910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e17511906%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _%hd17521910%_))
                                        (let ((_%__splice59355936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd17521910%_
                                                  '0))))
                                          (let ((_%tl17561919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice59355936%_
                                                    '1)))
                                                (_%target17541916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice59355936%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl17561919%_))
                                                (_%__match59695970%_
                                                 _%e17451886%_
                                                 _%hd17461890%_
                                                 _%tl17471893%_
                                                 _%e17481896%_
                                                 _%hd17491900%_
                                                 _%tl17501903%_
                                                 _%e17511906%_
                                                 _%hd17521910%_
                                                 _%tl17531913%_
                                                 _%__splice59355936%_
                                                 _%target17541916%_
                                                 _%tl17561919%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%tl17501903%_))
                                                    (let ((_%__splice59415942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%tl17501903%_
                                                              '0))))
                                                      (let ((_%tl17821824%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice59415942%_ '1)))
                    (_%target17801821%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice59415942%_ '0))))
                (if (let () (declare (not safe)) (gx#stx-null? _%tl17821824%_))
                    (_%__match59895990%_
                     _%e17451886%_
                     _%hd17461890%_
                     _%tl17471893%_
                     _%e17481896%_
                     _%hd17491900%_
                     _%tl17501903%_
                     _%__splice59415942%_
                     _%target17801821%_
                     _%tl17821824%_)
                    (let () (declare (not safe)) (_%g17401794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g17401794%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%tl17501903%_))
                                            (let ((_%__splice59415942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice->vector
                                                      _%tl17501903%_
                                                      '0))))
                                              (let ((_%tl17821824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice59415942%_
                                                        '1)))
                                                    (_%target17801821%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice59415942%_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl17821824%_))
                                                    (_%__match59895990%_
                                                     _%e17451886%_
                                                     _%hd17461890%_
                                                     _%tl17471893%_
                                                     _%e17481896%_
                                                     _%hd17491900%_
                                                     _%tl17501903%_
                                                     _%__splice59415942%_
                                                     _%target17801821%_
                                                     _%tl17821824%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g17401794%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g17401794%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl17501903%_))
                                    (let ((_%__splice59415942%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl17501903%_
                                              '0))))
                                      (let ((_%tl17821824%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice59415942%_
                                                '1)))
                                            (_%target17801821%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice59415942%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _%tl17821824%_))
                                            (_%__match59895990%_
                                             _%e17451886%_
                                             _%hd17461890%_
                                             _%tl17471893%_
                                             _%e17481896%_
                                             _%hd17491900%_
                                             _%tl17501903%_
                                             _%__splice59415942%_
                                             _%target17801821%_
                                             _%tl17821824%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g17401794%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g17401794%_))))))
                        (let () (declare (not safe)) (_%g17401794%_)))))
                (let () (declare (not safe)) (_%g17401794%_)))))))))
