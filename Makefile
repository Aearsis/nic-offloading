export TEXINPUTS=src/:

TGT += thesis.pdf
# TGT += thesis-nup.pdf

all: ${TGT}
	rsync thesis.pdf yoda.eideo.cz:/srv/www/eideo/www/master-thesis.pdf

include latex/latex/Makerules

$(call images,img)

#$(call latex,      src/thesis-double.tex)
#$(call glossaries, src/thesis-double.tex)
#$(call biblatex,   src/thesis-double.tex)

$(call latex,      src/thesis.tex)
$(call glossaries, src/thesis.tex)
$(call biblatex,   src/thesis.tex)

$(call latex-include, bib/*)

preview: thesis.pdf
	okular thesis.pdf &

debug:
	${MAKE} DEBUG=debug

%-nup.pdf:  %.pdf
	pdfnup $<
