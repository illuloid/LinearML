
module IntBox = struct

  type t = { value: int }

  val make: int -> t
  let make n = { value = n }

  val get: t obs -> int
  let get t = 
    match t with 
    | { _ ; value = n } -> n

  val release: t -> unit
  let release t = free t

  val add: t * t -> t
  let add x y = 
    let n1 = get (obs x) in
    let n2 = get (obs y) in
    free x ;
    free y ;
    make (n1 + n2)
end