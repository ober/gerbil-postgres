;;; -*- Gerbil -*-
;;; Retry logic for transient PostgreSQL failures

(import :std/sugar
        :jafourni/gerbil-postgres/errors
        :jafourni/gerbil-postgres/logging)
(export call-with-retry
        with-retry)

;; Retry a thunk on transient errors with exponential backoff and jitter.
(def (call-with-retry thunk
       retryable?: (retryable? pg-transient-error?)
       max-retries: (max-retries 3)
       base-delay: (base-delay 0.1)
       max-delay: (max-delay 5.0)
       on-retry: (on-retry #f))
  (let lp ((attempt 0))
    (with-catch
     (lambda (e)
       (if (and (< attempt max-retries)
                (retryable? e))
         (let* ((delay (min max-delay
                            (* base-delay (expt 2 attempt))))
                ;; Add jitter: 50-150% of computed delay
                (jitter (+ 0.5 (random-real)))
                (actual-delay (* delay jitter)))
           (when on-retry
             (on-retry e attempt actual-delay))
           (debugf "retrying after ~as (attempt ~a/~a): ~a"
                   actual-delay (+ attempt 1) max-retries e)
           (thread-sleep! actual-delay)
           (lp (+ attempt 1)))
         (raise e)))
     thunk)))

;; (with-retry (max-retries: 5) body ...)
(defrule (with-retry (key val ...) body ...)
  (call-with-retry (lambda () body ...) key val ...))
