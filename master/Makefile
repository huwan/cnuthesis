PDFC = xelatex
READER = evince
BIB = bibtex

TARGET = thesis.pdf
OUTGROWTH = *.out *.log *.aux *.lof *.lot *.bbl *.blg *.thm *.toc *.out *.xdv *.exa
SOURCE = thesis.tex

$(TARGET): $(SOURCE)
	$(PDFC)	-no-pdf $(SOURCE)
	$(BIB) thesis
	$(PDFC)	-no-pdf $(SOURCE)
	$(PDFC)	$(SOURCE)

read:
	$(READER) $(TARGET)

clean:
	-rm -f $(OUTGROWTH)
	-rm -f ./data/*.aux

cleanall:
	-rm -f $(OUTGROWTH) $(TARGET)
	-rm -f ./data/*.aux

.PHONY:read clean cleanall
