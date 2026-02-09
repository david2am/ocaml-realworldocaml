type t = (string * int) list

let empty = []
let to_list x = x

(* computes a frequency count of the lines *)
let count lst_assoc line =
  let str_equal (key, _) = String.equal line key in 
  let find_opt = List.find_opt str_equal lst_assoc in

  match find_opt with
    (* add new line *)
    | None -> (line, 1) :: lst_assoc
    (* sum 1 to count of existing line *)
    | Some (_, count) ->
      let lst_assoc_without_line =
        List.filter (fun x -> not (str_equal x)) lst_assoc
      in 
      (line, count + 1) :: lst_assoc_without_line

let count_improved lst_assoc line =
  let rec aux acc = function
    | [] -> (line, 1) :: acc
    | (key, count) :: t when String.equal key line ->
      List.rev_append acc @@ (key, count + 1) :: t
    | h :: t -> aux (h :: acc) t
  in
  aux [] lst_assoc
    

let rec print = function
  | [] -> print_endline ""
  | (key, count) :: t ->
    Printf.printf "\n(\"%s\", %d)" key count;
    print t