let duplicate l =
  let rec d acc l =
    match l with
    | [] -> acc
    | c :: tl -> d (c :: c :: acc) tl in
  List.rev (d [] l)
