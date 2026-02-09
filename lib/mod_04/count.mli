type t

val empty : t

val to_list : t -> (string * int) list

val count : t -> string -> t

val count_improved : t -> string -> t

val print : t -> unit