(* Given a run-length code list generated as specified in the previous problem,
   construct its uncompressed version. *)
let rec decode l =
  let rec unpack acc cnt c =
    match cnt with
    | 0 -> acc
    | _ -> unpack (c :: acc) (cnt - 1) c in
  let rec aux acc l =
    match l with
    | [] -> acc
    | One c :: tl -> aux (c :: acc) tl
    | Many (cnt, c) :: tl -> aux ((unpack [] cnt c) @ acc) tl in
  List.rev (aux [] l)
