(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/errors::timestamp 1772159941)
  (begin
    (define jafourni/gerbil-postgres/errors#pg-error-fields
      (lambda (_%err211%_)
        (if (let ()
              (declare (not safe))
              (class-instance? std/db/dbi#SQLError::t _%err211%_))
            (let ((_%irr213%_
                   (let ((__obj5739 _%err211%_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj5739
                            'std/db/dbi#SQLError::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref __obj5739 '3 '#f '#f))
                         (unchecked-slot-ref __obj5739 'irritants)))))
              (if (pair? _%irr213%_)
                  (if (pair? (let () (declare (not safe)) (##cdr _%irr213%_)))
                      (let ((_%alist215%_ (cadr _%irr213%_)))
                        (if (list? _%alist215%_) _%alist215%_ '#f))
                      '#f)
                  '#f))
            '#f)))
    (define jafourni/gerbil-postgres/errors#pg-error-field
      (lambda (_%err204%_ _%key205%_)
        (let ((_%fields207%_
               (jafourni/gerbil-postgres/errors#pg-error-fields _%err204%_)))
          (if _%fields207%_
              (let ((_%pair209%_ (assv _%key205%_ _%fields207%_)))
                (if _%pair209%_ (cdr _%pair209%_) '#f))
              '#f))))
    (define jafourni/gerbil-postgres/errors#pg-error-sqlstate
      (lambda (_%err202%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err202%_ '#\C)))
    (define jafourni/gerbil-postgres/errors#pg-error-severity
      (lambda (_%err200%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err200%_ '#\S)))
    (define jafourni/gerbil-postgres/errors#pg-error-detail
      (lambda (_%err198%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err198%_ '#\D)))
    (define jafourni/gerbil-postgres/errors#pg-error-hint
      (lambda (_%err196%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err196%_ '#\H)))
    (define jafourni/gerbil-postgres/errors#pg-error-position
      (lambda (_%err192%_)
        (let ((_%pos194%_
               (jafourni/gerbil-postgres/errors#pg-error-field
                _%err192%_
                '#\P)))
          (if _%pos194%_ (string->number _%pos194%_) '#f))))
    (define jafourni/gerbil-postgres/errors#pg-error-constraint
      (lambda (_%err190%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err190%_ '#\n)))
    (define jafourni/gerbil-postgres/errors#pg-error-table
      (lambda (_%err188%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err188%_ '#\t)))
    (define jafourni/gerbil-postgres/errors#pg-error-column
      (lambda (_%err186%_)
        (jafourni/gerbil-postgres/errors#pg-error-field _%err186%_ '#\c)))
    (define jafourni/gerbil-postgres/errors#pg-sqlstate-class?
      (lambda (_%err181%_ _%class-prefix182%_)
        (let ((_%code184%_
               (jafourni/gerbil-postgres/errors#pg-error-sqlstate _%err181%_)))
          (if _%code184%_
              (if (string? _%code184%_)
                  (if (>= (let ()
                            (declare (not safe))
                            (##string-length _%code184%_))
                          '2)
                      (string=?
                       (substring
                        _%code184%_
                        '0
                        (string-length _%class-prefix182%_))
                       _%class-prefix182%_)
                      '#f)
                  '#f)
              '#f))))
    (define jafourni/gerbil-postgres/errors#pg-sqlstate=?
      (lambda (_%err176%_ _%code177%_)
        (let ((_%actual179%_
               (jafourni/gerbil-postgres/errors#pg-error-sqlstate _%err176%_)))
          (if _%actual179%_ (string=? _%actual179%_ _%code177%_) '#f))))
    (define jafourni/gerbil-postgres/errors#pg-connection-error?
      (lambda (_%err174%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate-class? _%err174%_ '"08")))
    (define jafourni/gerbil-postgres/errors#pg-integrity-violation?
      (lambda (_%err172%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate-class? _%err172%_ '"23")))
    (define jafourni/gerbil-postgres/errors#pg-unique-violation?
      (lambda (_%err170%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err170%_ '"23505")))
    (define jafourni/gerbil-postgres/errors#pg-foreign-key-violation?
      (lambda (_%err168%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err168%_ '"23503")))
    (define jafourni/gerbil-postgres/errors#pg-not-null-violation?
      (lambda (_%err166%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err166%_ '"23502")))
    (define jafourni/gerbil-postgres/errors#pg-check-violation?
      (lambda (_%err164%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err164%_ '"23514")))
    (define jafourni/gerbil-postgres/errors#pg-serialization-failure?
      (lambda (_%err162%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err162%_ '"40001")))
    (define jafourni/gerbil-postgres/errors#pg-deadlock?
      (lambda (_%err160%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err160%_ '"40P01")))
    (define jafourni/gerbil-postgres/errors#pg-syntax-error?
      (lambda (_%err158%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate-class? _%err158%_ '"42")))
    (define jafourni/gerbil-postgres/errors#pg-insufficient-privilege?
      (lambda (_%err156%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err156%_ '"42501")))
    (define jafourni/gerbil-postgres/errors#pg-undefined-table?
      (lambda (_%err154%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err154%_ '"42P01")))
    (define jafourni/gerbil-postgres/errors#pg-undefined-column?
      (lambda (_%err152%_)
        (jafourni/gerbil-postgres/errors#pg-sqlstate=? _%err152%_ '"42703")))
    (define jafourni/gerbil-postgres/errors#pg-transient-error?
      (lambda (_%err147%_)
        (let ((_%$e149%_
               (jafourni/gerbil-postgres/errors#pg-serialization-failure?
                _%err147%_)))
          (if _%$e149%_
              _%$e149%_
              (jafourni/gerbil-postgres/errors#pg-deadlock? _%err147%_)))))))
