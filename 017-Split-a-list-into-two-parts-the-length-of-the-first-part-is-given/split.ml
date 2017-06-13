(* If the length of the first part is longer than the entire list,
   then the first part is the list and the second part is empty. *)
let split l n =
  let rec s acc l m =
    match l, m with
    | [], _ -> (List.rev acc, [])
    | c :: tl as lst, 0 -> (List.rev acc, lst)
    | c :: tl, _ -> s (c :: acc) tl (m - 1) in
  (s [] l n)
