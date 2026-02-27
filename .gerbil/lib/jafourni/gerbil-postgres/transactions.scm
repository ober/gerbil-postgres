(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "std/db/dbi")
    (load-module "std/sugar")
    (load-module "jafourni/gerbil-postgres/errors")
    (load-module "jafourni/gerbil-postgres/logging"))
  (load-module "jafourni/gerbil-postgres/transactions~0"))
