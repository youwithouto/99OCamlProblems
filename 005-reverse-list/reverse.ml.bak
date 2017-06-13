(* OCaml standard library has List.rev
   but we ask that you reimplement it. *)

let rec rev l =
  match l with
  [] -> []
| [x] -> [x]
| h::t -> rev t @ [h];;

let () =
  let result = rev [1;2;3;4] in List.iter (Printf.printf "%i ") result;
  Printf.printf "\n"
