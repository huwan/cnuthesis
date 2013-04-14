call clean

xelatex -no-pdf CNUthesisX.tex
bibtex CNUthesisX
bibtex CNUthesisX
xelatex -no-pdf CNUthesisX.tex
xelatex CNUthesisX.tex
call clean