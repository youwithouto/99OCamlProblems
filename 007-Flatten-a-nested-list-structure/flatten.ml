(* There is no nested list type in OCaml, so we need to define one
     first. A node of a nested list is either an element, or a list of
     nodes. *)

type 'a node =
  | One of 'a
  | Many of 'a node list;;

(*
let rec flatten list =
  match list with
  | [] -> []
  | One hd :: tl -> hd :: flatten tl
  | Many hd :: tl -> flatten hd @ flatten tl;;
  *)

let flatten list =
  let rec aux ol acc =
    match ol with
    | [] -> acc
    | One hd :: tl -> aux tl (hd :: acc)
    | Many hd :: tl -> aux tl (aux hd acc) in
    List.rev (aux list []);;
