#do a document lol
#nnnonononog

PDFLATEX=pdflatex --shell-escape
BIBTEX=bibtex
SRC := $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex | sed -e 's/.tex//')

PDF := $(PDFLATEX) $(SRC).tex
BIB := $(BIBTEX) $(SRC)

all: pdf

pdfbib:
	$(PDF) && $(BIB) && $(PDF) && $(PDF)

pdf:
	$(PDF) && $(PDF)

clean:
	-@rm *.bbl *.aux *.blg *.dvi *.log *.ps *.toc *.ilg *.lof *.lot *.lol *.idx 2>/dev/null

cleanall: clean
	-@rm *.pdf 2>/dev/null

install:
	sudo apt-get install texlive

installfull:
	sudo apt-get install texlive-full latex2html latex2rtf
