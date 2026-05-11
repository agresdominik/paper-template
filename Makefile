
build:
	latexmk -pdf main.tex -outdir=out
	mv ./out/main.pdf ./build_output.pdf

watch:
	latexmk -pdf -pvc main.tex -outdir=out

clean:
	latexmk -c -outdir=out
	rm -f build_output.pdf
	rm -dr ./out
