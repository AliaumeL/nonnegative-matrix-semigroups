.PHONY: clean

LIB := ../lib/* \
			 ../papers.bib \
			 paper-meta.yaml

CC := pdflatex -interaction=nonstopmode -xelatex -halt-on-error -file-line-error

report.tex: report.md $(LIB)
	pandoc --defaults=arxiv-plain.yaml report.md -o report.tex

report.pdf: report.tex
	$(CC) report.tex

clean:
	latexmk -C 
	rm -f report.aux report.log report.out report.tex report.pdf
	rm -f *.synctex.gz

