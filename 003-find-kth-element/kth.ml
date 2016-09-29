(* Find the k'th element of a list. (easy) *)

let rec kth l k =
  if k <= 0
  then []
  else match l with
    | [] -> []
    | h::t -> if k = 1 then h else kth t (k - 1);;
