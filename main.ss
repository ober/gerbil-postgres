;;; -*- Gerbil -*-
;;; Main entry point — re-exports everything plus convenience API

(import :std/db/dbi
        :std/db/postgresql
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/types
        :jafourni/gerbil-postgres/logging
        :jafourni/gerbil-postgres/query
        :jafourni/gerbil-postgres/pool
        :jafourni/gerbil-postgres/retry
        :jafourni/gerbil-postgres/transactions
        :jafourni/gerbil-postgres/cursor
        :jafourni/gerbil-postgres/migrations)
(export (import: :jafourni/gerbil-postgres/errors)
        (import: :jafourni/gerbil-postgres/types)
        (import: :jafourni/gerbil-postgres/logging)
        (import: :jafourni/gerbil-postgres/query)
        (import: :jafourni/gerbil-postgres/pool)
        (import: :jafourni/gerbil-postgres/retry)
        (import: :jafourni/gerbil-postgres/transactions)
        (import: :jafourni/gerbil-postgres/cursor)
        (import: :jafourni/gerbil-postgres/migrations)
        pg-connect
        pg-eval
        pg-query)

;;; --- Convenience API ---

;; Connect to PostgreSQL with extended type support.
;; Accepts a URL string or keyword arguments matching postgresql-connect.
(def (pg-connect . args)
  (using-pg-types
   (apply sql-connect postgresql-connect args)))

;; Execute SQL with logging and extended types.
(def (pg-eval conn sql . args)
  (using-pg-types
   (let (start (current-second))
     (let (result (apply sql-eval conn sql args))
       (pg-log-query sql args (- (current-second) start))
       result))))

;; Query SQL with logging and extended types.
(def (pg-query conn sql . args)
  (using-pg-types
   (let (start (current-second))
     (let (result (apply sql-eval-query conn sql args))
       (pg-log-query sql args (- (current-second) start))
       result))))
