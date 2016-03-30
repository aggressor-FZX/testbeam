PDFLATEX := pdflatex
BIBTEX := bibtex
FILE := testbeam

%.pdf:  %.tex
	$(PDFLATEX) $(FILE).tex && $(BIBTEX) $(FILE) && \
	$(PDFLATEX) $(FILE).tex && $(PDFLATEX) $(FILE).tex

all: $(FILE).pdf

.PHONY: clean

clean:
	rm -f *.dvi *.aux *.log *.bbl *.blg *.spl *~ *.out testbeam.pdf
