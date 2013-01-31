#!/bin/bash
rm *.aux *.log *.toc *.ind *.inx *.gls *.glo *.ist *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps
xelatex cnuthesis.ins
xelatex cnuthesis.dtx
makeindex -s gind cnuthesis
makeindex -s gglo -o cnuthesis.gls cnuthesis.glo
xelatex cnuthesis.dtx
xelatex cnuthesis.dtx
