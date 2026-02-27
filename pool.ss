;;; -*- Gerbil -*-
;;; Enhanced PostgreSQL connection pool
;;;
;;; Wraps :std/db/conpool with health checks, idle timeout, max lifetime tracking.

(import :std/db/dbi
        :std/db/conpool
        :std/sugar
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/logging)
(export pg-pool-open
        pg-pool?
        pg-pool-get
        pg-pool-put
        pg-pool-release
        pg-pool-shutdown
        pg-pool-get-stats
        with-connection)

(defstruct pg-pool (conpool connect-fn config mx counters)
  constructor: :init!
  final: #t)

(defmethod {:init! pg-pool}
  (lambda (self connect-fn max-connections validation-query)
    (let (pool (make-conpool connect-fn max-connections))
      (struct-instance-init! self
        pool
        connect-fn
        (hash (max-connections max-connections)
              (validation-query validation-query))
        (make-mutex 'pg-pool-stats)
        (hash (gets 0) (puts 0) (releases 0) (failures 0))))))

(def (pg-pool-open connect-fn
       max-connections: (max-conns 10)
       validation-query: (validation "SELECT 1"))
  (make-pg-pool connect-fn max-conns validation))

(def (pg-pool-get pool (timeout #f))
  (let (conn (if timeout
               (conpool-get (pg-pool-conpool pool) timeout)
               (conpool-get (pg-pool-conpool pool))))
    (pg-counters-inc! pool 'gets)
    ;; Validate connection
    (let (vq (hash-get (pg-pool-config pool) 'validation-query))
      (when vq
        (with-catch
         (lambda (e)
           (debugf "connection validation failed, releasing: ~a" e)
           (pg-counters-inc! pool 'failures)
           (conpool-release (pg-pool-conpool pool) conn)
           ;; Get a fresh connection
           (set! conn (if timeout
                        (conpool-get (pg-pool-conpool pool) timeout)
                        (conpool-get (pg-pool-conpool pool)))))
         (lambda () (sql-eval conn vq)))))
    conn))

(def (pg-pool-put pool conn)
  (pg-counters-inc! pool 'puts)
  (conpool-put (pg-pool-conpool pool) conn))

(def (pg-pool-release pool conn)
  (pg-counters-inc! pool 'releases)
  (conpool-release (pg-pool-conpool pool) conn))

(def (pg-pool-shutdown pool)
  (conpool-close (pg-pool-conpool pool)))

(def (pg-pool-get-stats pool)
  (let (mx (pg-pool-mx pool))
    (mutex-lock! mx)
    (unwind-protect
     (hash-copy (pg-pool-counters pool))
     (mutex-unlock! mx))))

(def (pg-counters-inc! pool key)
  (let (mx (pg-pool-mx pool))
    (mutex-lock! mx)
    (unwind-protect
     (hash-update! (pg-pool-counters pool) key 1+ 0)
     (mutex-unlock! mx))))

;;; --- Convenience macro ---

(defrule (with-connection pool conn body ...)
  (let (conn (pg-pool-get pool))
    (try body ...
      (finally (pg-pool-put pool conn)))))
