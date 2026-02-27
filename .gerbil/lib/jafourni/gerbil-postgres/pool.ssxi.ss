prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-class
   jafourni/gerbil-postgres/pool#pg-pool::t
   (@class jafourni/gerbil-postgres/pool#pg-pool::t
           ()
           (object::t t::t)
           (conpool connect-fn config mx counters)
           (conpool connect-fn config mx counters)
           :init!
           #t
           #t
           #f
           #f
           ((:init! . jafourni/gerbil-postgres/pool#pg-pool:::init!))))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool::t
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/pool#pg-pool::t)
    'class::t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool?
   (@predicate jafourni/gerbil-postgres/pool#pg-pool::t))
  (declare-type
   jafourni/gerbil-postgres/pool#make-pg-pool
   (@constructor jafourni/gerbil-postgres/pool#pg-pool::t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-conpool
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t conpool #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-connect-fn
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t connect-fn #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-config
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t config #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-mx
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t mx #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-counters
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t counters #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-conpool-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t conpool #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-connect-fn-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t connect-fn #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-config-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t config #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-mx-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t mx #t))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-counters-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t counters #t))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-conpool
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t conpool #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-connect-fn
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t connect-fn #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-config
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t config #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-mx
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t mx #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-counters
   (@accessor jafourni/gerbil-postgres/pool#pg-pool::t counters #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-conpool-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t conpool #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-connect-fn-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t connect-fn #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-config-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t config #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-mx-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t mx #f))
  (declare-type
   jafourni/gerbil-postgres/pool#&pg-pool-counters-set!
   (@mutator jafourni/gerbil-postgres/pool#pg-pool::t counters #f))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool:::init!
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-open__%
   (@lambda 4
            #f
            signature:
            (return:
             jafourni/gerbil-postgres/pool#pg-pool::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-open__@
   (@kw-lambda-dispatch
    (max-connections: validation-query:)
    jafourni/gerbil-postgres/pool#pg-pool-open__%))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-open
   (@kw-lambda
    (max-connections: validation-query:)
    jafourni/gerbil-postgres/pool#pg-pool-open__@))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-get__%
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-get__0
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-get
   (@case-lambda
    (1
     jafourni/gerbil-postgres/pool#pg-pool-get__0
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
      jafourni/gerbil-postgres/pool))
    (2
     jafourni/gerbil-postgres/pool#pg-pool-get__%
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
      jafourni/gerbil-postgres/pool))))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-put
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-release
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-shutdown
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-pool-get-stats
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
             jafourni/gerbil-postgres/pool)))
  (declare-type
   jafourni/gerbil-postgres/pool#pg-counters-inc!
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
             jafourni/gerbil-postgres/pool))))
