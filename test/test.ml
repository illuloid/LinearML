
module Test:sig

  type t1 = int32 * int32
  type 'a t2 = 'a * 'a
  type ('a, 'b) t4 = 'a t2 * 'b t2

  type 'a t = { field1: 'a x }
  and 'a x = 'a * 'a

  type t3 = Bob | Bib of int32

  val f: t3 -> int32


end = struct


  let f () = 
    if true then Bob else Bib


end
