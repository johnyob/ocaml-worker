default:
	opam update
	opam install . --deps-only
	dune build

build:
	dune build

build_release:
	dune build --profile release

install:
	opam update
	opam install . --deps-only

miniflare: build_release
	npx miniflare ./_build/default/src/main.bc.js

clean:
	dune clean