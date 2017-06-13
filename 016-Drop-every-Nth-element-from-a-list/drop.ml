let drop l m =
  let rec d acc l n =
    match l, n with
    | [], _ -> acc
    | c :: tl, 1 -> d acc tl m
    | c :: tl, _ -> d (c :: acc) tl (n - 1) in
  List.rev (d [] l m)
