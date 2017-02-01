derp:
	cd src && rebuild -use-ocamlfind -package compiler-libs.common ppx_react.native
	ocamlc -dsource -ppx src/ppx_react.native  -pp ./../reason/refmt_impl.native -impl test.re > testing.ml
	./../reason/refmt_impl.native --parse ml --print re testing.ml
	# @echo "----"
	./../reason/refmt_impl.native --parse re --print re testing.re
