prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-type
   jafourni/gerbil-postgres/logging#errorf
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging)))
  (declare-type
   jafourni/gerbil-postgres/logging#warnf
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging)))
  (declare-type
   jafourni/gerbil-postgres/logging#infof
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging)))
  (declare-type
   jafourni/gerbil-postgres/logging#debugf
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging)))
  (declare-type
   jafourni/gerbil-postgres/logging#verbosef
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging)))
  (declare-type
   jafourni/gerbil-postgres/logging#current-pg-query-logger
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/logging#current-pg-query-logger)
    'procedure::t))
  (declare-type
   jafourni/gerbil-postgres/logging#current-pg-slow-threshold
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/logging#current-pg-slow-threshold)
    'procedure::t))
  (declare-type
   jafourni/gerbil-postgres/logging#pg-log-query
   (@lambda 3
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/logging))))
