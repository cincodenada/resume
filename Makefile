.PHONY: view watch

default: resume.pdf

watch:
	while true; do \
    inotifywait -qr -e modify -e create -e delete -e move *; \
    make; \
  done

%.pdf: %.tex util.tex
	xelatex --interaction=nonstopmode $<

view:
	xdg-open resume.pdf &
