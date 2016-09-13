# This is the Makefile for the output directory

CARDS :=  $(wildcard *-front.tex) $(wildcard *-back.tex) $(wildcard *-backw.tex) $(wildcard *-web.tex)
CARDS_PDF = $(CARDS:%.tex=%.pdf)
CARDS_PNG = $(CARDS:%.tex=%.png)
CARDS_JPG = $(CARDS:%.tex=%.jpg)


all: deck.pdf deck_reps.pdf $(CARDS_PNG) $(CARDS_PDF) $(CARDS_JPG)

%.pdf:: %.tex
	@pdflatex $<

%.png: %.pdf
	convert -density 450 $< $@

%-web.jpg: %-web.pdf
	convert -density 150 $< $@

%.jpg: %.pdf
	convert -density 450 $< $@
 

pdfs: $(CARDS_PDF)

backw.pdf: 
	pdfjam *backw.pdf --nup 3x3 --outfile $@

back.pdf: 
	pdfjam *back.pdf --nup 3x3 --outfile $@

web_tex:=$(wildcard *-web.tex)
web_images=$(web_tex:%.tex=%.jpg)

web_images: $(web_images)
