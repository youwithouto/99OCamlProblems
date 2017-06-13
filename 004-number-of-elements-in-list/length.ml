(* OCaml standard library has List.length
   but we ask that you reimplement it.
   Bonus for a tail recursive solution. *)

let rec length l =
match l with
  | [] -> 0
  | _ :: tl -> 1 + length tl
