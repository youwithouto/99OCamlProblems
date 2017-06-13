(* Find out whether a list is a palindrome *)

let rev l =
let rec rvs la lb =
  match la with
  | [] -> lb
  | hd :: tl -> rvs tl (hd :: lb) in
rvs l [];;

let is_palindrome l =
  let reversed = rev l in
  if l = reversed then true else false;;  (* I don't need this if clause, I just need to present the test. *)

(* let is_palindrome list = list = List.rev list *)

(* Instead of defining a 'reverse' function myself,
  I can use the lib function List.rev *)
