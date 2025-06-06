(*


render_table
  ["language";"architect";"first release"]
  [
    ["Lisp" ;"John McCarthy" ;"1958"] ;
    ["C"    ;"Dennis Ritchie";"1969"] ;
    ["ML"   ;"Robin Milner"  ;"1973"] ;
    ["OCaml";"Xavier Leroy"  ;"1996"] ;
  ]
|> print_endline
;;

| language | architect      | first release |
|----------+----------------+---------------|
| Lisp     | John McCarthy  | 1958          |
| C        | Dennis Ritchie | 1969          |
| ML       | Robin Milner   | 1973          |
| OCaml    | Xavier Leroy   | 1996          |



1. write a function to compute the maximum width of each column of data
2. write a function to create a separator between the header and the rows
3. write a function to render the rows
4. write a function to render the entire table


*)

let max_col_width header rows =
  let lengths = List.map String.length in
  let max = List.map2 Int.max in
  
  List.fold_left (
    fun acc row -> max acc @@ lengths row
  ) (lengths header) rows 
;;

let render_separator widths =
  let dashes = List.map (fun w -> String.make w '-') widths in
  "|-" ^ (String.concat "-+-" dashes) ^ "-|"
;;

let pad s length = s ^ String.make (length - String.length s) ' '

let render_row widths row =
  let padded = List.map2 pad row widths in
  "| " ^ (String.concat " | " padded) ^ " |"
;;

let render_table ~header ~rows =
  let widths = max_col_width header rows in

  let head = render_row widths header in
  let separator = render_separator widths in
  let rows = List.map (render_row widths) rows in

  String.concat "\n" (head :: separator :: rows)
;;

