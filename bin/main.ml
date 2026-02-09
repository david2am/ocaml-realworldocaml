(* let () =
  print_endline "\nHola mundo!" *)
  
(* let () =
  let open Mod_03.Render_table in

  let header = ["language";"architect";"first release"] in
  let rows = [
    ["Lisp" ;"John McCarthy" ;"1958"] ;
    ["C"    ;"Dennis Ritchie";"1969"] ;
    ["ML"   ;"Robin Milner"  ;"1973"] ;
    ["OCaml";"Xavier Leroy"  ;"1996"] ;
  ] in

  render_table ~header ~rows
  |> print_endline *)

let () =
  let open Mod_04.Count in

  let lst_assoc  = count empty "hola" in
  let lst_assoc2 = count lst_assoc "mundo" in
  let lst_assoc3 = count lst_assoc2 "mundo" in

  print lst_assoc3