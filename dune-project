(lang dune 3.6)

(name ocaml_worker)

(generate_opam_files true)

(source
 (github johnyob/ocaml-worker))

(authors "Alistair O'Brien")

(license MIT)

(package
 (name ocaml_worker)
 (depends ocaml dune js_of_ocaml))
