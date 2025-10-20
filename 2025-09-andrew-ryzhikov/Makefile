.PHONY: all clean

all: report.tex

report.tex: report.md arxiv-plain.yaml paper-meta.yaml
	pandoc --defaults=arxiv-plain.yaml report.md -o report.tex

clean:
	rm -f report.tex
