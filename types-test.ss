;;; -*- Gerbil -*-
(import :std/test
        :jafourni/gerbil-postgres/types)
(export types-test)

(def types-test
  (test-suite "types"
    ;; JSON
    (test-case "serialize-json converts hash to string"
      (let (s (serialize-json (hash ("name" "Alice") ("age" 30))))
        (check (string? s) ? values)
        ;; Key order is non-deterministic, just check it parses back
        (let (obj (deserialize-json s))
          (check (hash-ref obj "name") => "Alice")
          (check (hash-ref obj "age") => 30))))

    (test-case "deserialize-json parses JSON string"
      (let (obj (deserialize-json "{\"name\":\"Bob\"}"))
        (check (hash-ref obj "name") => "Bob")))

    (test-case "JSON round-trip"
      (let* ((original (hash ("key" "value") ("num" 42)))
             (json-str (serialize-json original))
             (parsed (deserialize-json json-str)))
        (check (hash-ref parsed "key") => "value")
        (check (hash-ref parsed "num") => 42)))

    ;; UUID
    (test-case "serialize-uuid accepts valid UUID"
      (check (serialize-uuid "550e8400-e29b-41d4-a716-446655440000")
             => "550e8400-e29b-41d4-a716-446655440000"))

    (test-case "serialize-uuid rejects invalid UUID"
      (check-exception (serialize-uuid "not-a-uuid") true))

    (test-case "deserialize-uuid returns string"
      (check (deserialize-uuid "550e8400-e29b-41d4-a716-446655440000")
             => "550e8400-e29b-41d4-a716-446655440000"))

    ;; BYTEA
    (test-case "serialize-bytea produces hex format"
      (check (serialize-bytea (u8vector 65 66 67)) => "\\x414243"))

    (test-case "serialize-bytea pads single-digit hex"
      (check (serialize-bytea (u8vector 0 15 255)) => "\\x000fff"))

    (test-case "deserialize-bytea parses hex format"
      (let (bv (deserialize-bytea "\\x414243"))
        (check (u8vector? bv) ? values)
        (check (u8vector-ref bv 0) => 65)
        (check (u8vector-ref bv 1) => 66)
        (check (u8vector-ref bv 2) => 67)))

    (test-case "bytea round-trip"
      (let* ((original (u8vector 0 127 255))
             (serialized (serialize-bytea original))
             (deserialized (deserialize-bytea serialized)))
        (check (u8vector->list deserialized) => '(0 127 255))))

    ;; Arrays
    (test-case "serialize-pg-array with numbers"
      (check (serialize-pg-array '(1 2 3)) => "{1,2,3}"))

    (test-case "serialize-pg-array with strings"
      (check (serialize-pg-array '("a" "b" "c")) => "{\"a\",\"b\",\"c\"}"))

    (test-case "serialize-pg-array with NULL"
      (check (serialize-pg-array '(1 #f 3)) => "{1,NULL,3}"))

    (test-case "serialize-pg-array with booleans"
      (check (serialize-pg-array '(#t #f)) => "{t,NULL}"))

    (test-case "serialize-pg-array with string escaping"
      (check (serialize-pg-array '("he\"llo" "wo\\rld"))
             => "{\"he\\\"llo\",\"wo\\\\rld\"}"))

    (test-case "deserialize-pg-array with numbers"
      (check (deserialize-pg-array "{1,2,3}") => '("1" "2" "3")))

    (test-case "deserialize-pg-array with quoted strings"
      (check (deserialize-pg-array "{\"hello\",\"world\"}")
             => '("hello" "world")))

    (test-case "deserialize-pg-array with NULL"
      (check (deserialize-pg-array "{1,NULL,3}") => '("1" #f "3")))

    (test-case "deserialize-pg-array empty"
      (check (deserialize-pg-array "{}") => '()))

    (test-case "pg-catalog is defined"
      (check (not (not pg-catalog)) ? values))))
