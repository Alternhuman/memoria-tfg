TEX = latexmk


CHAPTERS := $(wildcard Chapters/*)
.PHONY: all clean view

all: marcopolo
	
view:
	xdg-open main.pdf

clean:
	$(TEX) -c

marcopolo: marcopolo.tex
	$(TEX) marcopolo.tex
