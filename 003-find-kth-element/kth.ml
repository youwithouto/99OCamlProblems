(* Find the k'th element of a list. (easy) *)

let rec at i l =
  match l with
  | [] -> None
  | hd :: tl -> if i = 1 then Some hd else at (i - 1) tl;;
