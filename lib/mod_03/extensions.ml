let extensions filenames =
  List.filter_map (
    fun fname ->
      match List.rev (String.split_on_char '.' fname) with
      | [ext; name] when name <> "" && ext <> "" -> Some ext
      | _ -> None
  ) filenames
  |> List.sort_uniq String.compare
