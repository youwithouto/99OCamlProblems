(* Find the last but one (last and penultimate)
   elements of a list. (easy) *)

let rec last_two l =
  match l with
  | [] | [_] -> None
  | hd1 :: (hd2 :: []) -> Some (hd1, hd2) (* directly use [x ; y] to match a list with two elements *)
  | hd :: tl -> last_two tl (* 'hd' is useless use '_' instead *)

(* Pattern matching can use [x ; y] *)
