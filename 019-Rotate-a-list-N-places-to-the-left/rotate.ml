
let rotate l n =
  let rec rotatefirstn fst l n =
    match l, n with
    | _, 0 -> l @ (List.rev fst)
    | [], _ -> List.rev fst
    | c :: tl, _ -> rotatefirstn (c :: fst) tl (n - 1) in
  let rec rotatelastn fst l n =
    match l, n with
    | _, 0 -> fst @ (List.rev l)
    | c :: tl, _ -> rotatelastn (c :: fst) tl (n - 1)
    | [], _ -> fst in
  if n > 0 then rotatefirstn [] l n
  else rotatelastn [] (List.rev l) (-n)
