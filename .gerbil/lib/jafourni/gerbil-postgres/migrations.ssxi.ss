prelude: :gerbil/compiler/ssxi
package: jafourni/gerbil-postgres

(begin
  (declare-class
   jafourni/gerbil-postgres/migrations#migration::t
   (@class jafourni/gerbil-postgres/migrations#migration::t
           ()
           (object::t t::t)
           (version name up-sql down-sql checksum)
           (version name up-sql down-sql checksum)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration::t
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/migrations#migration::t)
    'class::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration?
   (@predicate jafourni/gerbil-postgres/migrations#migration::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#make-migration
   (@constructor jafourni/gerbil-postgres/migrations#migration::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-version
   (@accessor jafourni/gerbil-postgres/migrations#migration::t version #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-name
   (@accessor jafourni/gerbil-postgres/migrations#migration::t name #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-up-sql
   (@accessor jafourni/gerbil-postgres/migrations#migration::t up-sql #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-down-sql
   (@accessor jafourni/gerbil-postgres/migrations#migration::t down-sql #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-checksum
   (@accessor jafourni/gerbil-postgres/migrations#migration::t checksum #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-version-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t version #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-name-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t name #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-up-sql-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t up-sql #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-down-sql-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t down-sql #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-checksum-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t checksum #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-version
   (@accessor jafourni/gerbil-postgres/migrations#migration::t version #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-name
   (@accessor jafourni/gerbil-postgres/migrations#migration::t name #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-up-sql
   (@accessor jafourni/gerbil-postgres/migrations#migration::t up-sql #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-down-sql
   (@accessor jafourni/gerbil-postgres/migrations#migration::t down-sql #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-checksum
   (@accessor jafourni/gerbil-postgres/migrations#migration::t checksum #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-version-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t version #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-name-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t name #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-up-sql-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t up-sql #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-down-sql-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t down-sql #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migration-checksum-set!
   (@mutator jafourni/gerbil-postgres/migrations#migration::t checksum #f))
  (declare-class
   jafourni/gerbil-postgres/migrations#migrator::t
   (@class jafourni/gerbil-postgres/migrations#migrator::t
           ()
           (object::t t::t)
           (conn migrations lock-id)
           (conn migrations lock-id)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator::t
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/migrations#migrator::t)
    'class::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator?
   (@predicate jafourni/gerbil-postgres/migrations#migrator::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#make-migrator
   (@constructor jafourni/gerbil-postgres/migrations#migrator::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-conn
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t conn #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-migrations
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t migrations #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-lock-id
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t lock-id #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-conn-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t conn #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-migrations-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t migrations #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-lock-id-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t lock-id #t))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-conn
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t conn #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-migrations
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t migrations #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-lock-id
   (@accessor jafourni/gerbil-postgres/migrations#migrator::t lock-id #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-conn-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t conn #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-migrations-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t migrations #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#&migrator-lock-id-set!
   (@mutator jafourni/gerbil-postgres/migrations#migrator::t lock-id #f))
  (declare-type
   jafourni/gerbil-postgres/migrations#load-migrations-from-directory
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#string-suffix?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#parse-migration-version
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#parse-migration-name
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#string-crc32
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#+migration-lock-id+
   (optimizer-resolve-class
    '(typedecl jafourni/gerbil-postgres/migrations#+migration-lock-id+)
    'fixnum::t))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-open__%
   (@lambda 4
            #f
            signature:
            (return:
             jafourni/gerbil-postgres/migrations#migrator::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-open__@
   (@kw-lambda-dispatch
    (lock-timeout:)
    jafourni/gerbil-postgres/migrations#migrator-open__%))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrator-open
   (@kw-lambda
    (lock-timeout:)
    jafourni/gerbil-postgres/migrations#migrator-open__@))
  (declare-type
   jafourni/gerbil-postgres/migrations#ensure-migration-table!
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#with-advisory-lock
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#applied-versions
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrate-up!
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrate-up-to!
   (@lambda 2
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrate-down!__%
   (@lambda 2
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrate-down!__0
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#migrate-down!
   (@case-lambda
    (1
     jafourni/gerbil-postgres/migrations#migrate-down!__0
     signature:
     (return:
      fixnum::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      jafourni/gerbil-postgres/migrations))
    (2
     jafourni/gerbil-postgres/migrations#migrate-down!__%
     signature:
     (return:
      fixnum::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      jafourni/gerbil-postgres/migrations))))
  (declare-type
   jafourni/gerbil-postgres/migrations#migration-status
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#pending-migrations
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#apply-migration!
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#rollback-migration!
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
             jafourni/gerbil-postgres/migrations)))
  (declare-type
   jafourni/gerbil-postgres/migrations#take-up-to
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
             jafourni/gerbil-postgres/migrations))))
