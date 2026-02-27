;;; -*- Gerbil -*-
(import :std/test
        :std/db/dbi
        :jafourni/gerbil-postgres/errors)
(export errors-test)

;; Helper: create a fake SQLError with PostgreSQL-style irritants
(def (make-test-sql-error sqlstate . extra-fields)
  (let (alist (cons (cons #\C sqlstate)
                    (cons (cons #\S "ERROR")
                          (cons (cons #\M "test error message")
                                extra-fields))))
    (make-SQLError "test error message"
                   irritants: ['test-where alist]
                   where: 'test)))

(def errors-test
  (test-suite "errors"
    (test-case "pg-error-sqlstate extracts SQLSTATE code"
      (let (err (make-test-sql-error "23505"))
        (check (pg-error-sqlstate err) => "23505")))

    (test-case "pg-error-severity extracts severity"
      (let (err (make-test-sql-error "23505"))
        (check (pg-error-severity err) => "ERROR")))

    (test-case "pg-error-detail extracts detail"
      (let (err (make-test-sql-error "23505" (cons #\D "Key (name)=(Alice) already exists")))
        (check (pg-error-detail err) => "Key (name)=(Alice) already exists")))

    (test-case "pg-error-hint extracts hint"
      (let (err (make-test-sql-error "42P01" (cons #\H "Try creating the table first")))
        (check (pg-error-hint err) => "Try creating the table first")))

    (test-case "pg-error-constraint extracts constraint name"
      (let (err (make-test-sql-error "23505" (cons #\n "users_pkey")))
        (check (pg-error-constraint err) => "users_pkey")))

    (test-case "pg-error-table extracts table name"
      (let (err (make-test-sql-error "23505" (cons #\t "users")))
        (check (pg-error-table err) => "users")))

    (test-case "pg-error-position extracts as integer"
      (let (err (make-test-sql-error "42601" (cons #\P "15")))
        (check (pg-error-position err) => 15)))

    (test-case "returns #f for missing fields"
      (let (err (make-test-sql-error "23505"))
        (check (pg-error-detail err) => #f)
        (check (pg-error-hint err) => #f)
        (check (pg-error-constraint err) => #f)))

    (test-case "returns #f for non-SQLError"
      (check (pg-error-sqlstate "not an error") => #f)
      (check (pg-error-severity 42) => #f))

    ;; SQLSTATE class predicates
    (test-case "pg-connection-error? matches 08xxx"
      (check (pg-connection-error? (make-test-sql-error "08003")) ? values)
      (check (pg-connection-error? (make-test-sql-error "23505")) => #f))

    (test-case "pg-integrity-violation? matches 23xxx"
      (check (pg-integrity-violation? (make-test-sql-error "23505")) ? values)
      (check (pg-integrity-violation? (make-test-sql-error "23503")) ? values)
      (check (pg-integrity-violation? (make-test-sql-error "42P01")) => #f))

    (test-case "specific violation predicates"
      (check (pg-unique-violation? (make-test-sql-error "23505")) ? values)
      (check (pg-foreign-key-violation? (make-test-sql-error "23503")) ? values)
      (check (pg-not-null-violation? (make-test-sql-error "23502")) ? values)
      (check (pg-check-violation? (make-test-sql-error "23514")) ? values))

    (test-case "serialization/deadlock predicates"
      (check (pg-serialization-failure? (make-test-sql-error "40001")) ? values)
      (check (pg-deadlock? (make-test-sql-error "40P01")) ? values))

    (test-case "pg-transient-error? matches serialization or deadlock"
      (check (pg-transient-error? (make-test-sql-error "40001")) ? values)
      (check (pg-transient-error? (make-test-sql-error "40P01")) ? values)
      (check (pg-transient-error? (make-test-sql-error "23505")) => #f))

    (test-case "syntax/privilege predicates"
      (check (pg-syntax-error? (make-test-sql-error "42601")) ? values)
      (check (pg-insufficient-privilege? (make-test-sql-error "42501")) ? values)
      (check (pg-undefined-table? (make-test-sql-error "42P01")) ? values)
      (check (pg-undefined-column? (make-test-sql-error "42703")) ? values))))
