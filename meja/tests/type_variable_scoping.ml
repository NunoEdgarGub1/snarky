open Snarky
open Snarky.Snark
module Impl =
  Snarky.Snark.Run.Make (Snarky.Backends.Mnt4.Default) (Core_kernel.Unit)
open Impl

let (f : 'a -> 'b) = fun (x : int) -> x

let (g : 'a -> 'b) = fun (x : bool) -> x

module X = struct
  type 'a t = A of 'a | B of int | C : bool -> bool t

  let (a : 'int t) = A (Field.constant (Field.Constant.of_string "15"))

  let (a1 : 'unit t) = A ()

  let (b : 'bool t) = B 30

  let (c : 'bool t) = C true

  let (f : 'int -> 'unit -> 'bool) = fun (a : 'a) (b : 'a) -> a
end
