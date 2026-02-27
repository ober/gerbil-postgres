;;; -*- Gerbil -*-
;;; Query logging with slow query detection

(import :std/logger
        :std/sugar)
(export #t)

(deflogger postgres)

;; Query log callback: (sql params elapsed-seconds) → void
(def current-pg-query-logger (make-parameter #f))

;; Slow query threshold in seconds (default 1.0s)
(def current-pg-slow-threshold (make-parameter 1.0))

;; Log a query execution with timing
(def (pg-log-query sql params elapsed)
  ;; Call user logger if set
  (let (logger (current-pg-query-logger))
    (when (and logger (procedure? logger))
      (logger sql params elapsed)))
  ;; Log slow queries
  (let (threshold (current-pg-slow-threshold))
    (when (and threshold (>= elapsed threshold))
      (warnf "slow query (~as): ~a" elapsed sql))))
