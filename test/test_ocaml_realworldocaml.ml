open Alcotest
open Test_mod03

let () =
  run "Real World OCaml" [
    "Lists", [
      test_case "* max_col_width" `Quick Render_table.test_max_col_width;     
      test_case "* render_separator" `Quick Render_table.test_render_separator;     
      test_case "* pad" `Quick Render_table.test_pad;     
      test_case "* render_row" `Quick Render_table.test_render_row;     
      test_case "* render_table" `Quick Render_table.test_render_table;     
    ];
  ]
