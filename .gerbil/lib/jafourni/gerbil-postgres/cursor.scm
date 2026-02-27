(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "std/db/dbi")
    (load-module "std/iter")
    (load-module "std/sugar")
    (load-module "jafourni/gerbil-postgres/errors")
    (load-module "jafourni/gerbil-postgres/logging")
    (load-module "jafourni/gerbil-postgres/transactions"))
  (load-module "jafourni/gerbil-postgres/cursor~0"))
