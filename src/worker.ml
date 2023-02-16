open Js_of_ocaml

module Response = struct
  type t = Obj.t Js.t

  let create response : t =
    let constr = Js.Unsafe.global##._Response in
    new%js constr (Js.string response)
  ;;
end

module Event = struct
  type t = Obj.t Js.t

  let add_listener name f =
    Js.Unsafe.fun_call
      (Js.Unsafe.js_expr "addEventListener")
      [| Js.Unsafe.inject (Js.string name); Js.Unsafe.inject f |]
  ;;

  let respond_with (t : t) response = 
    Js.Unsafe.fun_call ((Js.Unsafe.coerce t)##.respondWith) [| Js.Unsafe.inject response |]
end


