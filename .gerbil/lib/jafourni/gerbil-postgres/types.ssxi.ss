prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-type
   jafourni/gerbil-postgres/types#serialize-json
   (@lambda 1 std/text/json/util#json-object->string))
  (declare-type
   jafourni/gerbil-postgres/types#deserialize-json
   (@lambda 1 std/text/json/util#string->json-object))
  (declare-type
   jafourni/gerbil-postgres/types#+uuid-rx+
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/types#+uuid-rx+)
    't::t))
  (declare-type
   jafourni/gerbil-postgres/types#serialize-uuid
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#deserialize-uuid
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#serialize-bytea
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#deserialize-bytea
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#serialize-pg-array
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#pg-escape-array-string
   (@lambda 1
            #f
            signature:
            (return:
             string::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#deserialize-pg-array
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#pg-parse-array
   (@lambda 1
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#pg-parse-quoted-element
   (@lambda 2
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#pg-parse-unquoted-element
   (@lambda 2
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
             jafourni/gerbil-postgres/types)))
  (declare-type
   jafourni/gerbil-postgres/types#pg-catalog
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/types#pg-catalog)
    'std/db/postgresql#catalog::t))
  (declare-type
   jafourni/gerbil-postgres/types#with-pg-types
   (@lambda 1
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
             jafourni/gerbil-postgres/types))))
