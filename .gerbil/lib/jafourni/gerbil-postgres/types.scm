(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin
    (load-module "std/db/postgresql")
    (load-module "std/text/json")
    (load-module "std/pregexp")
    (load-module "std/sugar"))
  (load-module "jafourni/gerbil-postgres/types~0"))
