let conversion: int = int_of_float (3.14159 *. 2.0)
let multiplication: int -> int = fun x -> x * x

(* Local definitions *)
(* let d = 2 * 3 in d * 7 *)

(* Pattern matching in definitions *)
let (x, y) = List.split [(1, 2); (3, 4); (5, 6); (7, 8)]

(* Pattern matching on records *)
type name = {
  first: string;
  last: string
}

let michal = { first = "Michal"; last = "Moudrý" }
let { first; last } = michal

(* Pattern matching on user defined types *)
type live_person = int * name
let age ((years, { first; last }) : live_person) = years
