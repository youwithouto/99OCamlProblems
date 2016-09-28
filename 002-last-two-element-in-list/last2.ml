(* Find the last but one (last and penultimate)
   elements of a list. (easy) *)

let rec last2 lst =
  match lst with
    [] | [x] -> None
  | [x ; y] -> (x, y)
  | h::t -> last2 t

(* Pattern matching can use [x ; y] *)
