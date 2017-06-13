(* Given two indices, i and k,
   the slice is the list containing the elements
   between the ith and kth element of the original list
   (both limits included).

   Start counting the elements with 0
   (this is the way the List module numbers elements). *)
(*
let slice l start end =
  let rec dropfirstn l n =
    match l, n with
    | c :: tl as lst, 0 -> lst
    | [], _ -> []
    | c :: tl, _ -> dropfirstn tl (n - 1) in
  let rec s acc l n =
    match l, n with
    | _, -1 -> acc
    | c :: tl, _ -> s (c :: acc) tl (n - 1)
    | [], _ -> acc in
  let lst = dropfirstn l start in
  let cnt = end - start in
  List.rev (s [] lst cnt)
*)

let slice l st e =
  let rec dropfirstn l n =
    match l, n with
    | c :: tl as lst, 0 -> lst
    | [], _ -> []
    | c :: tl, _ -> dropfirstn tl (n - 1) in
  let rec s acc l n =
    match l, n with
    | _, -1 -> acc
    | c :: tl, _ -> s (c :: acc) tl (n - 1)
    | [], _ -> acc in
  let lst = dropfirstn l st in
  let cnt = e - st in
List.rev (s [] lst cnt)
