#-------------------------------------------------------------------------------
# Copyright (c) 2016 Mateus Furquim
#
# Baseado no Makefile de:
# Edson Alves da Costa Júnior [https://github.com/edsomjr]
# Leonn Ferreira <leonn.paiva@gmail.com>
#-------------------------------------------------------------------------------

TARGET = tcc.pdf
MKD_FILE = ../$(addsuffix .md,  $(basename $(TARGET)))
TEX_FILE =    $(addsuffix .tex, $(basename $(TARGET)))
AUX_FILE =    $(addsuffix .aux, $(basename $(TARGET)))

CC=pandoc
FLAGS= --from=markdown --to=latex --indented-code-classes=numberLines --highlight-style=zenburn --parse-raw --smart --normalize --listings --ascii --atx-headers --number-sections --base-header-level=1

#FLAGS= --from=markdown_github --to=latex --toc --indented-code-classes=numberLines --highlight-style=zenburn --toc-depth=4 --smart --normalize --chapters --listings -T $(TARGET) --ascii --atx-headers

.PHONY: all clean tex pdf

all:
	@make tex
	@make pdf

#$(TARGET): $(MKD_FILE)
#	@echo [$@] Making... $(TARGET)
#	$(CC) $(FLAGS) --output=$@ $<

tex:
	iconv -t utf-8 $(MKD_FILE) | $(CC) $(FLAGS) --output=$(TEX_FILE)
	cat document_class.tex > tmp.tex
	cat packages.tex >> tmp.tex
	cat commands.tex >> tmp.tex
	cat beg.tex >> tmp.tex
	cat $(TEX_FILE) >> tmp.tex
	cat end.tex >> tmp.tex
	mv -v tmp.tex $(TEX_FILE)

pdf:
	pdflatex $(TEX_FILE) bibliografia.bib
	bibtex $(AUX_FILE)
	pdflatex $(TEX_FILE)
	pdflatex $(TEX_FILE)
	cp $(TARGET) ..
	rm -vf *.bbl *.blg *.log *.aux *.dvi

clean:
	rm -vf *.bbl *.blg *.log *.aux *.dvi *.pdf tmp.tex $(TEX_FILE) $(TARGET) ../$(TARGET)
