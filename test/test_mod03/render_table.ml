open Mod03.Render_table

let header = ["language";"architect";"first release"]
let rows = [
  ["Lisp" ;"John McCarthy" ;"1958"] ;
  ["C"    ;"Dennis Ritchie";"1969"] ;
  ["ML"   ;"Robin Milner"  ;"1973"] ;
  ["OCaml";"Xavier Leroy"  ;"1996"] ;
]

let test_max_col_width () =
  let expected = [8; 14; 13] in
  let actual = max_col_width header rows  in
  
  Alcotest.(check (int |> list)) "> max_col_width" expected actual
