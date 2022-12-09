all: hiroshi_doyu_motivation.pdf
	mv README.pdf hiroshi_doyu_motivation.pdf

hiroshi_doyu_motivation.pdf: README.pdf

%.pdf: %.md
	pandoc --toc --variable urlcolor=blue -s $< -o $@

%.docx: %.org
	pandoc --toc --variable urlcolor=blue -s $< -o $@
