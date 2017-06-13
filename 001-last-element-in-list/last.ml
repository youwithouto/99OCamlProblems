(* Write a function last : 'a list -> 'a option
   that returns the last element of a list. (easy) *)
open Core.Std

let rec last l =
  match l with
    | [] -> None
    | [hd] -> Some hd
    | hd :: tl -> last tl   (* 'hd' is useless use '_' instead *)

(* [] -> None
   [a] -> [a]
   [h::t] -> last t *)
