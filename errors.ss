;;; -*- Gerbil -*-
;;; SQLSTATE error classification for PostgreSQL
;;;
;;; PostgreSQL ErrorResponse fields are char-keyed alists in SQLError irritants:
;;;   #\S=severity, #\C=SQLSTATE, #\M=message, #\D=detail, #\H=hint,
;;;   #\P=position, #\W=where, #\n=constraint, #\t=table, #\c=column

(import :std/db/dbi
        :std/error
        :std/sugar)
(export
  pg-error-fields
  pg-error-sqlstate
  pg-error-severity
  pg-error-detail
  pg-error-hint
  pg-error-position
  pg-error-constraint
  pg-error-table
  pg-error-column
  pg-connection-error?
  pg-integrity-violation?
  pg-unique-violation?
  pg-foreign-key-violation?
  pg-not-null-violation?
  pg-check-violation?
  pg-serialization-failure?
  pg-deadlock?
  pg-syntax-error?
  pg-insufficient-privilege?
  pg-undefined-table?
  pg-undefined-column?
  pg-transient-error?)

;;; --- Field extraction from SQLError irritants ---

;; Extract the PostgreSQL error field alist from an SQLError.
;; The driver's raise-sql-error stores irritants as (where-sym alist).
(def (pg-error-fields err)
  (and (SQLError? err)
       (let (irr (SQLError-irritants err))
         (and (pair? irr)
              (pair? (cdr irr))
              (let (alist (cadr irr))
                (and (list? alist) alist))))))

(def (pg-error-field err key)
  (let (fields (pg-error-fields err))
    (and fields
         (let (pair (assv key fields))
           (and pair (cdr pair))))))

(def (pg-error-sqlstate err)
  (pg-error-field err #\C))

(def (pg-error-severity err)
  (pg-error-field err #\S))

(def (pg-error-detail err)
  (pg-error-field err #\D))

(def (pg-error-hint err)
  (pg-error-field err #\H))

(def (pg-error-position err)
  (let (pos (pg-error-field err #\P))
    (and pos (string->number pos))))

(def (pg-error-constraint err)
  (pg-error-field err #\n))

(def (pg-error-table err)
  (pg-error-field err #\t))

(def (pg-error-column err)
  (pg-error-field err #\c))

;;; --- SQLSTATE class predicates ---

(def (pg-sqlstate-class? err class-prefix)
  (let (code (pg-error-sqlstate err))
    (and code
         (string? code)
         (>= (string-length code) 2)
         (string=? (substring code 0 (string-length class-prefix))
                   class-prefix))))

(def (pg-sqlstate=? err code)
  (let (actual (pg-error-sqlstate err))
    (and actual (string=? actual code))))

;; 08xxx — Connection exceptions
(def (pg-connection-error? err)
  (pg-sqlstate-class? err "08"))

;; 23xxx — Integrity constraint violations
(def (pg-integrity-violation? err)
  (pg-sqlstate-class? err "23"))

;; 23505 — Unique violation
(def (pg-unique-violation? err)
  (pg-sqlstate=? err "23505"))

;; 23503 — Foreign key violation
(def (pg-foreign-key-violation? err)
  (pg-sqlstate=? err "23503"))

;; 23502 — Not null violation
(def (pg-not-null-violation? err)
  (pg-sqlstate=? err "23502"))

;; 23514 — Check violation
(def (pg-check-violation? err)
  (pg-sqlstate=? err "23514"))

;; 40001 — Serialization failure
(def (pg-serialization-failure? err)
  (pg-sqlstate=? err "40001"))

;; 40P01 — Deadlock detected
(def (pg-deadlock? err)
  (pg-sqlstate=? err "40P01"))

;; 42xxx — Syntax error or access rule violation
(def (pg-syntax-error? err)
  (pg-sqlstate-class? err "42"))

;; 42501 — Insufficient privilege
(def (pg-insufficient-privilege? err)
  (pg-sqlstate=? err "42501"))

;; 42P01 — Undefined table
(def (pg-undefined-table? err)
  (pg-sqlstate=? err "42P01"))

;; 42703 — Undefined column
(def (pg-undefined-column? err)
  (pg-sqlstate=? err "42703"))

;; Transient errors worth retrying: serialization failure or deadlock
(def (pg-transient-error? err)
  (or (pg-serialization-failure? err)
      (pg-deadlock? err)))
