(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define jafourni/gerbil-postgres/logging::timestamp 1772159945)
  (begin
    (define jafourni/gerbil-postgres/logging#errorf
      (lambda (_%fmt513%_ . _%args514%_)
        (let ()
          (declare (not safe))
          (std/logger#log-message 'postgres '0 _%fmt513%_ _%args514%_))))
    (define jafourni/gerbil-postgres/logging#warnf
      (lambda (_%fmt510%_ . _%args511%_)
        (let ()
          (declare (not safe))
          (std/logger#log-message 'postgres '1 _%fmt510%_ _%args511%_))))
    (define jafourni/gerbil-postgres/logging#infof
      (lambda (_%fmt507%_ . _%args508%_)
        (let ()
          (declare (not safe))
          (std/logger#log-message 'postgres '2 _%fmt507%_ _%args508%_))))
    (define jafourni/gerbil-postgres/logging#debugf
      (lambda (_%fmt504%_ . _%args505%_)
        (let ()
          (declare (not safe))
          (std/logger#log-message 'postgres '3 _%fmt504%_ _%args505%_))))
    (define jafourni/gerbil-postgres/logging#verbosef
      (lambda (_%fmt499%_ . _%args501%_)
        (let ()
          (declare (not safe))
          (std/logger#log-message 'postgres '4 _%fmt499%_ _%args501%_))))
    (define jafourni/gerbil-postgres/logging#current-pg-query-logger
      (make-parameter '#f))
    (define jafourni/gerbil-postgres/logging#current-pg-slow-threshold
      (make-parameter '1.))
    (define jafourni/gerbil-postgres/logging#pg-log-query
      (lambda (_%sql491%_ _%params492%_ _%elapsed493%_)
        (let ((_%logger495%_
               (let ()
                 (declare (not safe))
                 (jafourni/gerbil-postgres/logging#current-pg-query-logger))))
          (if (and _%logger495%_ (procedure? _%logger495%_))
              (_%logger495%_ _%sql491%_ _%params492%_ _%elapsed493%_)
              '#!void))
        (let ((_%threshold497%_
               (let ()
                 (declare (not safe))
                 (jafourni/gerbil-postgres/logging#current-pg-slow-threshold))))
          (if (and _%threshold497%_ (>= _%elapsed493%_ _%threshold497%_))
              (jafourni/gerbil-postgres/logging#warnf
               '"slow query (~as): ~a"
               _%elapsed493%_
               _%sql491%_)
              '#!void))))))
