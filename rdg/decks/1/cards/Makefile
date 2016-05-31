# This is the Makefile for the output directory

CARDS :=  $(wildcard *-front.tex) $(wildcard *-back.tex) $(wildcard *-web.tex)
CARDS_PDF = $(CARDS:%.tex=%.pdf)
CARDS_PNG = $(CARDS:%.tex=%.png)

all: deck.pdf $(CARDS_PNG) $(CARDS_PDF) 

%.pdf: %.tex
	pdflatex $<

%.png: %.pdf
	convert -density 450 $< $@

# 822x1122
