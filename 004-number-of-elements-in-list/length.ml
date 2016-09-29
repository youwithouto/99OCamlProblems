(* OCaml standard library has List.length
   but we ask that you reimplement it.
   Bonus for a tail recursive solution. *)

let rec length l =
  match l with
    [] -> 0
  | h::t -> 1 + length t;;

(* or *)

let rec length_inner l n =
  match l with
   [] -> n
  | h::t -> length_inner t (n + 1);;

let length l =
  length_inner l 0;;
