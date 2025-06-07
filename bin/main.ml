open Mod_03.Render_table

let header = ["language";"architect";"first release"]
let rows = [
  ["Lisp" ;"John McCarthy" ;"1958"] ;
  ["C"    ;"Dennis Ritchie";"1969"] ;
  ["ML"   ;"Robin Milner"  ;"1973"] ;
  ["OCaml";"Xavier Leroy"  ;"1996"] ;
]

let () =
  print_endline "\nHola mundo!"
;;

render_table ~header ~rows
|> print_endline
