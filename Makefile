PDF = out
TEX = main.tex
OUTDIR = $(realpath out)

all:
	latexmk -pdf -outdir=$(OUTDIR) $(TEX)
	mv $(OUTDIR)/$(basename $(TEX)).pdf $(PDF).pdf

watch:
	make all
	zathura *.pdf &
	while inotifywait -e close_write $(TEX); do make all; done

clean:
	latexmk -c -outdir=$(OUTDIR)
	rm -f $(OUTDIR)/*
