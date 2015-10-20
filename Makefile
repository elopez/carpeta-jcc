.PHONY: show clean all
LATEX=xelatex
VIEWER=evince

all: carpeta.pdf

horario.pdf: horario.tex
	$(LATEX) $<

carpeta.pdf: carpeta.tex horario.pdf
	$(LATEX) $<

show: carpeta.pdf
	$(VIEWER) $^

clean:
	@git clean -dfX
