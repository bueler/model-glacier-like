all: model.pdf

model.pdf: model.tex model.bib
	pdflatex model
	bibtex model
	pdflatex model
	pdflatex model

.PHONY: clean

clean:
	@rm -f *~ *.out *.aux *.log *.blg *.snm *.toc *.nav *.vrb *.bbl *.synctex.gz
