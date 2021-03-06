#do a document lol
#nnnonononog

VIEWER=evince
PDFLATEX=pdflatex --shell-escape
BIBTEX=bibtex
SRC := $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex | sed -e 's/.tex//')

PDF := $(PDFLATEX) $(SRC).tex
BIB := $(BIBTEX) $(SRC)

all: pdf clean view

pdfbib:
	$(PDF) && $(BIB) && $(PDF) && $(PDF)

pdf:
	$(PDF) && $(PDF)

view:
	$(VIEWER) $(SRC).pdf & 

clean:
	-@rm *.bbl *.aux *.blg *.dvi *.log *.ps *.toc *.ilg *.lof *.lot *.lol *.idx *.out 2>/dev/null

cleanall: clean
	-@rm *.pdf 2>/dev/null

install:
	sudo apt-get install texlive

installfull:
	sudo apt-get install texlive-full latex2html latex2rtf
