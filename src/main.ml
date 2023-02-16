open Worker

let () =
  Event.add_listener "fetch" (fun event ->
    Event.respond_with event (Response.create "Hello World from OCaml!"))
;;
