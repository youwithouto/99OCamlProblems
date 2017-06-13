
let encode list =
  let rec aux count acc l =
    match l with
    | [] -> []
    | [x] -> (count + 1, x) :: acc
    | hd1 :: (hd2 :: tl as t) ->
      if hd1 = hd2 then aux (count + 1) acc t
      else aux 0 ((count + 1, hd1) :: acc) t
  in
  List.rev (aux 0 [] list);;
