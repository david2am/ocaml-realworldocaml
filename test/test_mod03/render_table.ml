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
  
  Alcotest.(check (int |> list)) "" expected actual

let test_render_separator () =
  let expected = "|----------+----------------+---------------|" in
  let widths = max_col_width header rows in
  let actual = render_separator widths in

  Alcotest.(check string) "" expected actual

let test_pad () =
  let expected = "hola    " in
  let actual = pad "hola" 8 in

  Alcotest.(check string) "" expected actual

let test_render_row () =
  let expected = "| Hello    | World          | Muchacho      |" in
  let actual = render_row [8; 14; 13] ["Hello"; "World"; "Muchacho"]in

  Alcotest.(check string) "" expected actual

let test_render_table () =
  let expected = "| language | architect      | first release |\n|----------+----------------+---------------|\n| Lisp     | John McCarthy  | 1958          |\n| C        | Dennis Ritchie | 1969          |\n| ML       | Robin Milner   | 1973          |\n| OCaml    | Xavier Leroy   | 1996          |" in
  let actual = render_table ~header ~rows in

  Alcotest.(check string) "" expected actual
