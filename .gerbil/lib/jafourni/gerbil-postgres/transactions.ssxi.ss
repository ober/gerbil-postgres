prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-transaction__%
   (@lambda 5
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
             jafourni/gerbil-postgres/transactions)))
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-transaction__@
   (@kw-lambda-dispatch
    (isolation: read-only:)
    jafourni/gerbil-postgres/transactions#call-with-transaction__%))
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-transaction
   (@kw-lambda
    (read-only: isolation:)
    jafourni/gerbil-postgres/transactions#call-with-transaction__@))
  (declare-type
   jafourni/gerbil-postgres/transactions#pg-savepoint
   (@lambda 3
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
             jafourni/gerbil-postgres/transactions)))
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-serializable-retry__%
   (@lambda 5
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
             jafourni/gerbil-postgres/transactions)))
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-serializable-retry__@
   (@kw-lambda-dispatch
    (max-retries: base-delay:)
    jafourni/gerbil-postgres/transactions#call-with-serializable-retry__%))
  (declare-type
   jafourni/gerbil-postgres/transactions#call-with-serializable-retry
   (@kw-lambda
    (base-delay: max-retries:)
    jafourni/gerbil-postgres/transactions#call-with-serializable-retry__@)))
