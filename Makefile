kilimeliai.pdf: *.typ
	typst compile --diagnostic-format short main.typ $@

all: *.pdf
