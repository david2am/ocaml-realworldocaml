open Alcotest
open Mod_03.Extensions

let test_happy_path () =
  let expected = ["html"; "js"] in
  let actual = extensions ["index.html"; "index.js"] in

  Alcotest.(check (string |> list)) "" expected actual


let () =
  run "Real World OCaml" [
    "Lists", [
      test_case "* extensions happy path" `Quick test_happy_path;
    ];
  ]
