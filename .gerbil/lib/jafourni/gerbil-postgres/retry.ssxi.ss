prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-type
   jafourni/gerbil-postgres/retry#call-with-retry__%
   (@lambda 7
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
             jafourni/gerbil-postgres/retry)))
  (declare-type
   jafourni/gerbil-postgres/retry#call-with-retry__@
   (@kw-lambda-dispatch
    (retryable?: max-retries: base-delay: max-delay: on-retry:)
    jafourni/gerbil-postgres/retry#call-with-retry__%))
  (declare-type
   jafourni/gerbil-postgres/retry#call-with-retry
   (@kw-lambda
    (retryable?: base-delay: on-retry: max-delay: max-retries:)
    jafourni/gerbil-postgres/retry#call-with-retry__@)))
