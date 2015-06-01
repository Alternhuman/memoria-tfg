TEX = latexmk


CHAPTERS := $(wildcard Chapters/*)
.PHONY: all clean view

all: main
	
view:
	xdg-open main.pdf

clean:
	$(TEX) -c

main: main.tex $(CHAPTERS)
	$(TEX) main.tex
