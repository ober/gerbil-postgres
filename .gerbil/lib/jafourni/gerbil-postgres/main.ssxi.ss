prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-type
   jafourni/gerbil-postgres/main#pg-connect
   (@lambda (0)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/main)))
  (declare-type
   jafourni/gerbil-postgres/main#pg-eval
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/main)))
  (declare-type
   jafourni/gerbil-postgres/main#pg-query
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/main))))
