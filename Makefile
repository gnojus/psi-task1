IN=main.typ
OUT=kilimeliai.pdf

$OUT: *.typ
	typst compile --diagnostic-format short ${IN} $@

watch: *.typ
	typst watch --diagnostic-format short ${IN} ${OUT}

reload: 
	while inotifywait -e close_write ${OUT} 2>/dev/null; do pkill -HUP mupdf; done

open:
	mupdf ${OUT}

_run: watch open reload

run:
	make -j 3 _run

.PHONY: watch open reload run _run
all: *.pdf
