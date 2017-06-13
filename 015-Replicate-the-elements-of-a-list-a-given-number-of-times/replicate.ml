let replicate l n =
  let rec dup acc cnt c =
    match cnt with
    | 0 -> acc
    | _ -> dup (c :: acc) (cnt - 1) c in 
  let rec aux acc l n =
    match l with
    | [] -> acc
    | c :: tl -> aux ((dup [] n c) @ acc) tl n in
List.rev (aux [] l n)
