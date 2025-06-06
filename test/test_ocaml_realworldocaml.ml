open Alcotest

open Test_mod03

let () =
  run "Real World OCaml" [
    "Lists", [
      test_case "" `Quick Render_table.test_max_col_width;     
    ];
  ]
