(* Write a function last : 'a list -> 'a option
   that returns the last element of a list. (easy) *)

let rec last lst =
  match lst with
    [] -> None
  | h::t ->
    match t with
      [] -> [h]
      | hh::tt -> last t;;

(* [] -> None
   [a] -> [a]
   [h::t] -> last t *)
