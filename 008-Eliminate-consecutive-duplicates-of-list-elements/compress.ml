(*
let rec compress list =
  match list with
  | [] | [_] -> list
  | hd1 :: hd2 :: tl ->
    if hd1 = hd2 then compress (hd2 :: tl)
    else hd1 :: compress (hd2 :: tl)
  *)

let rec compress list =
  match list with
  | [] | [_] -> list
  | hd1 :: (hd2 :: tl as t) ->
    if hd1 = hd2 then compress t
    else hd1 :: compress t
