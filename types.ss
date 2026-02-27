;;; -*- Gerbil -*-
;;; Extended PostgreSQL type codecs
;;;
;;; Builds on :std/db/postgresql's defcatalog to add JSON, UUID, arrays,
;;; BYTEA, INET, INTERVAL, and more.

(import :std/db/postgresql
        :std/text/json
        :std/pregexp
        :std/sugar)
(export pg-catalog
        using-pg-types
        with-pg-types
        ;; Serializers/deserializers (exported for testing)
        serialize-json
        deserialize-json
        serialize-uuid
        deserialize-uuid
        serialize-bytea
        deserialize-bytea
        serialize-pg-array
        deserialize-pg-array)

;;; --- JSON/JSONB (OIDs 114, 3802) ---

(def (serialize-json obj)
  (json-object->string obj))

(def (deserialize-json str)
  (string->json-object str))

;;; --- UUID (OID 2950) ---

(def +uuid-rx+ (pregexp "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"))

(def (serialize-uuid str)
  (if (and (string? str) (pregexp-match +uuid-rx+ str))
    str
    (error "Invalid UUID format" str)))

(def (deserialize-uuid str)
  str)

;;; --- BYTEA (OID 17) ---
;;; PostgreSQL sends bytea as hex-encoded: \x4142...

(def (serialize-bytea bv)
  (if (u8vector? bv)
    (let* ((len (u8vector-length bv))
           (out (open-output-string)))
      (write-string "\\x" out)
      (let lp ((i 0))
        (when (< i len)
          (let (byte (u8vector-ref bv i))
            (when (< byte 16)
              (write-char #\0 out))
            (write-string (number->string byte 16) out)
            (lp (+ i 1)))))
      (get-output-string out))
    (error "Expected u8vector for BYTEA" bv)))

(def (deserialize-bytea str)
  (cond
   ((and (string? str)
         (>= (string-length str) 2)
         (string=? (substring str 0 2) "\\x"))
    (let* ((hex (substring str 2 (string-length str)))
           (len (quotient (string-length hex) 2))
           (bv (make-u8vector len)))
      (let lp ((i 0))
        (when (< i len)
          (let (byte (string->number (substring hex (* i 2) (+ (* i 2) 2)) 16))
            (u8vector-set! bv i byte)
            (lp (+ i 1)))))
      bv))
   ;; Fall back: return as-is if not hex format
   (else str)))

;;; --- Arrays (OIDs: INT4ARRAY=1007, TEXTARRAY=1009, FLOAT8ARRAY=1022) ---
;;; PostgreSQL text format: {1,2,3} or {"a","b","c"}

(def (serialize-pg-array lst)
  (if (list? lst)
    (let (out (open-output-string))
      (write-char #\{ out)
      (let lp ((rest lst) (first? #t))
        (when (pair? rest)
          (unless first? (write-char #\, out))
          (let (elem (car rest))
            (cond
             ((not elem) (write-string "NULL" out))
             ((string? elem)
              (write-char #\" out)
              (write-string (pg-escape-array-string elem) out)
              (write-char #\" out))
             ((number? elem)
              (write-string (number->string elem) out))
             ((boolean? elem)
              (write-string (if elem "t" "f") out))
             (else
              (write-char #\" out)
              (write-string (pg-escape-array-string
                             (with-output-to-string (lambda () (display elem))))
                            out)
              (write-char #\" out))))
          (lp (cdr rest) #f)))
      (write-char #\} out)
      (get-output-string out))
    (error "Expected list for PostgreSQL array" lst)))

(def (pg-escape-array-string str)
  (let (out (open-output-string))
    (let lp ((i 0))
      (when (< i (string-length str))
        (let (c (string-ref str i))
          (when (or (char=? c #\\) (char=? c #\"))
            (write-char #\\ out))
          (write-char c out)
          (lp (+ i 1)))))
    (get-output-string out)))

(def (deserialize-pg-array str)
  (if (and (string? str)
           (> (string-length str) 0)
           (char=? (string-ref str 0) #\{))
    (pg-parse-array str)
    str))

;; Simple PostgreSQL array parser for text format: {elem,elem,...}
(def (pg-parse-array str)
  (let ((len (string-length str))
        (pos 1)  ;; skip opening {
        (result []))
    (let lp ((pos pos) (result result))
      (cond
       ((>= pos len) (reverse result))
       ((char=? (string-ref str pos) #\})
        (reverse result))
       ((char=? (string-ref str pos) #\,)
        (lp (+ pos 1) result))
       ((char=? (string-ref str pos) #\")
        (let-values (((elem next-pos) (pg-parse-quoted-element str (+ pos 1))))
          (lp next-pos (cons elem result))))
       (else
        (let-values (((elem next-pos) (pg-parse-unquoted-element str pos)))
          (lp next-pos
              (cons (if (string=? elem "NULL") #f elem) result))))))))

(def (pg-parse-quoted-element str pos)
  (let (out (open-output-string))
    (let lp ((i pos))
      (if (>= i (string-length str))
        (values (get-output-string out) i)
        (let (c (string-ref str i))
          (cond
           ((char=? c #\\)
            (when (< (+ i 1) (string-length str))
              (write-char (string-ref str (+ i 1)) out))
            (lp (+ i 2)))
           ((char=? c #\")
            (values (get-output-string out) (+ i 1)))
           (else
            (write-char c out)
            (lp (+ i 1)))))))))

(def (pg-parse-unquoted-element str pos)
  (let lp ((i pos))
    (if (or (>= i (string-length str))
            (char=? (string-ref str i) #\,)
            (char=? (string-ref str i) #\}))
      (values (substring str pos i) i)
      (lp (+ i 1)))))

;;; --- Build the extended catalog ---

(defcatalog (pg-catalog default-catalog)
  ;; JSON
  ((114) serialize-json deserialize-json)
  ;; JSONB
  ((3802) serialize-json deserialize-json)
  ;; UUID
  ((2950) serialize-uuid deserialize-uuid)
  ;; BYTEA
  ((17) serialize-bytea deserialize-bytea)
  ;; INT4ARRAY
  ((1007) serialize-pg-array deserialize-pg-array)
  ;; TEXTARRAY
  ((1009) serialize-pg-array deserialize-pg-array)
  ;; FLOAT8ARRAY
  ((1022) serialize-pg-array deserialize-pg-array)
  ;; INET, CIDR — string passthrough
  ((869 650) identity identity)
  ;; MACADDR
  ((829) identity identity)
  ;; INTERVAL — string passthrough
  ((1186) identity identity)
  ;; OID
  ((26) number->string string->number)
  ;; VOID
  ((2278) identity identity))

;;; --- Convenience macro/function to use extended types ---

(def (with-pg-types thunk)
  (parameterize ((current-catalog pg-catalog))
    (thunk)))

(defrule (using-pg-types body ...)
  (parameterize ((current-catalog pg-catalog))
    body ...))

;;; --- User extensibility ---
;;; To register additional types, use defcatalog to create a new catalog
;;; extending pg-catalog:
;;;   (defcatalog (my-catalog pg-catalog)
;;;     ((oid) my-serializer my-deserializer))
