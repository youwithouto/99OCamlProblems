(* OCaml standard library has List.rev
   but we ask that you reimplement it. *)

let rev l =
let rec rvs la lb =
  match la with
  | [] -> lb
  | hd :: tl -> rvs tl (hd :: lb) in
rvs l [];;
