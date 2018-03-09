export TEXINPUTS=src/:

include latex/latex/Makerules

$(call images,img)

$(call latex,     src/thesis.tex)
