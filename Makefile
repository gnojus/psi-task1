kilimeliai.pdf: *.typ
	typst compile --diagnostic-format short main.typ $@

watch: *.typ
	typst watch --diagnostic-format short main.typ kilimeliai.pdf

.PHONY: watch 
all: *.pdf
