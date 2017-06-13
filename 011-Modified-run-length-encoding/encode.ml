(*
Modify the result of the previous problem in such a way that
if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as (N E) lists.

Since OCaml lists are homogeneous,
one needs to define a type to hold both single elements and sub-lists.
  *)

type 'a rle =
  | One of 'a
  | Many of int * 'a;;

let encode1 list =
  let rec aux count acc l =
    match l with
    | [] -> []
    | [x] -> (count + 1, x) :: acc
    | hd1 :: (hd2 :: tl as t) ->
      if hd1 = hd2 then aux (count + 1) acc t
      else aux 0 ((count + 1, hd1) :: acc) t
  in
  List.rev (aux  0 [] list);;

let encode list =
  let encoded = encode1 list in
  List.map (fun (n, s) -> (if n = 1 then One s else Many (n, s))) encoded;;
