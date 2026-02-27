;;; -*- Gerbil -*-
(import :std/test
        :jafourni/gerbil-postgres/query)
(export query-test)

(def query-test
  (test-suite "query"
    ;; sql-identifier
    (test-case "sql-identifier quotes name"
      (check (sql-identifier "users") => "\"users\""))

    (test-case "sql-identifier escapes internal quotes"
      (check (sql-identifier "table\"name") => "\"table\"\"name\""))

    ;; sql-named
    (test-case "sql-named replaces named parameters"
      (let-values (((sql params)
                    (sql-named "SELECT * FROM users WHERE name = :name AND age > :age"
                               name: "Alice" age: 25)))
        (check sql => "SELECT * FROM users WHERE name = $1 AND age > $2")
        (check params => ["Alice" 25])))

    (test-case "sql-named reuses parameter numbers for repeated names"
      (let-values (((sql params)
                    (sql-named "SELECT * FROM t WHERE a = :x OR b = :x"
                               x: 42)))
        (check sql => "SELECT * FROM t WHERE a = $1 OR b = $1")
        (check params => [42])))

    (test-case "sql-named preserves :: cast syntax"
      (let-values (((sql params)
                    (sql-named "SELECT :val::integer" val: "42")))
        (check sql => "SELECT $1::integer")
        (check params => ["42"])))

    (test-case "sql-named errors on missing parameter"
      (check-exception
       (sql-named "SELECT :missing" name: "Alice")
       true))

    ;; sql-where
    (test-case "sql-where builds AND clause"
      (let-values (((sql params)
                    (sql-where [["name = $" "Alice"] ["age > $" 25]])))
        (check sql => "name = $1 AND age > $2")
        (check params => ["Alice" 25])))

    (test-case "sql-where with empty list returns TRUE"
      (let-values (((sql params) (sql-where [])))
        (check sql => "TRUE")
        (check params => [])))

    ;; sql-insert
    (test-case "sql-insert generates INSERT statement"
      (let-values (((sql params)
                    (sql-insert "users" ["name" "age"] ["Alice" 30])))
        (check sql => "INSERT INTO \"users\" (\"name\", \"age\") VALUES ($1, $2)")
        (check params => ["Alice" 30])))

    ;; sql-update
    (test-case "sql-update generates UPDATE statement"
      (let-values (((sql params)
                    (sql-update "users" [["name" "Bob"]] [["id = $" 1]])))
        (check sql => "UPDATE \"users\" SET \"name\" = $1 WHERE id = $2")
        (check params => ["Bob" 1])))

    (test-case "sql-update with multiple sets and wheres"
      (let-values (((sql params)
                    (sql-update "users"
                                [["name" "Bob"] ["age" 30]]
                                [["id = $" 1] ["active = $" #t]])))
        (check sql => "UPDATE \"users\" SET \"name\" = $1, \"age\" = $2 WHERE id = $3 AND active = $4")
        (check params => ["Bob" 30 1 #t])))))
