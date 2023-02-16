open! Js_of_ocaml

module Response : sig
  type t
  val create : string -> t
end

module Event : sig
  type t

  val add_listener : string -> (t -> unit) -> unit

  val respond_with : t -> Response.t -> unit
end

