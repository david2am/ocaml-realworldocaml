let extensions filenames =
  List.filter_map (
    fun fname ->
      match List.rev (String.split_on_char '.' fname) with
      | [ext; name] when name <> "" && ext <> "" -> Some ext
      | _ -> None
  ) filenames
  |> List.sort_uniq String.compare

let is_ocaml_source fname =
  match List.rev (String.split_on_char '.' fname) with
    | ["ml" | "mli"; name] when name <> "" -> true
    | _ -> false

let separate_ocaml_files fnames =
  List.partition is_ocaml_source fnames

let (ml_files, other_files) =
  separate_ocaml_files ["main.ml"; "main.mli"; "index.js"; "table.py"]  
