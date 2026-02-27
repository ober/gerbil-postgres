(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/main::timestamp 1772159953)
  (begin
    (define jafourni/gerbil-postgres/main#pg-connect
      (lambda _%args2772%_
        (let ((__tmp6240
               (lambda ()
                 (apply std/db/dbi#sql-connect
                        std/db/postgresql#postgresql-connect
                        _%args2772%_))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp6240
           std/db/postgresql#current-catalog
           jafourni/gerbil-postgres/types#pg-catalog))))
    (define jafourni/gerbil-postgres/main#pg-eval
      (lambda (_%conn2763%_ _%sql2764%_ . _%args2765%_)
        (let ((__tmp6241
               (lambda ()
                 (let* ((_%start2768%_ (current-second))
                        (_%result2770%_
                         (apply std/db/dbi#sql-eval
                                _%conn2763%_
                                _%sql2764%_
                                _%args2765%_)))
                   (let ((__tmp6242 (- (current-second) _%start2768%_)))
                     (declare (not safe))
                     (jafourni/gerbil-postgres/logging#pg-log-query
                      _%sql2764%_
                      _%args2765%_
                      __tmp6242))
                   _%result2770%_))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp6241
           std/db/postgresql#current-catalog
           jafourni/gerbil-postgres/types#pg-catalog))))
    (define jafourni/gerbil-postgres/main#pg-query
      (lambda (_%conn2754%_ _%sql2755%_ . _%args2756%_)
        (let ((__tmp6243
               (lambda ()
                 (let* ((_%start2759%_ (current-second))
                        (_%result2761%_
                         (apply std/db/dbi#sql-eval-query
                                _%conn2754%_
                                _%sql2755%_
                                _%args2756%_)))
                   (let ((__tmp6244 (- (current-second) _%start2759%_)))
                     (declare (not safe))
                     (jafourni/gerbil-postgres/logging#pg-log-query
                      _%sql2755%_
                      _%args2756%_
                      __tmp6244))
                   _%result2761%_))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp6243
           std/db/postgresql#current-catalog
           jafourni/gerbil-postgres/types#pg-catalog))))))
