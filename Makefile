all: $(subst .md,.pdf,$(shell ls *.md))

%.pdf: %.md
	pandoc --toc --variable urlcolor=blue -s $< -o $@

clean:
	rm *.pdf
