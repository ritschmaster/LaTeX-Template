# Copyright Richard Bäck <richard.baeck@free-your-pc.com>, 2016
# GPLv3

################################################################################
# USER DEFINED VARIABLES
PROJECT_NAME := MeineArtikel
VERSION := 0.1
DOC_FILES :=  NormalerArtikel.tex IEEEArtikel.tex
BIB_FILES := MeineLiteraturliste.bib
IDX_FILES :=
OTHER_DIST_FILES := image.png MeinProgramm.py
################################################################################

LATEX_PROGRAM := pdflatex
BIB_PROGRAM := bibtex
IDX_PROGRAM := makeindex

PDF_ARTIFACTS := ${DOC_FILES:.tex=.pdf}
AUX_ARTIFACTS := ${DOC_FILES:.tex=.aux}
TOC_ARTIFACTS := ${DOC_FILES:.tex=.toc}
LOG_ARTIFACTS := ${DOC_FILES:.tex=.log}
OUT_ARTIFACTS := ${DOC_FILES:.tex=.out}
ILG_ARTIFACTS := ${DOC_FILES:.tex=.ilg}
IDX_ARTIFACTS := ${DOC_FILES:.tex=.idx}
LOF_ARTIFACTS := ${DOC_FILES:.tex=.lof}
LOT_ARTIFACTS := ${DOC_FILES:.tex=.lot}
BBL_ARTIFACTS := ${DOC_FILES:.tex=.bbl}
BLG_ARTIFACTS := ${DOC_FILES:.tex=.blg}

all:
	$(LATEX_PROGRAM) $(DOC_FILES)
	for f in $(DOC_FILES); do \
		$(LATEX_PROGRAM) "$$f"; \
	done
	for f in $(IDX_FILES); do \
		$(IDX_PROGRAM) "$$f"; \
	done
	for f in $(AUX_ARTIFACTS); do \
		$(BIB_PROGRAM) "$$f"; \
	done
	for f in $(DOC_FILES); do \
		$(LATEX_PROGRAM) "$$f"; \
	done
	for f in $(DOC_FILES); do \
		$(LATEX_PROGRAM) "$$f"; \
	done

clean:
	@- $(RM) *.pdf
	@- $(RM) *.aux
	@- $(RM) *.toc
	@- $(RM) *.log
	@- $(RM) *.out
	@- $(RM) *.ilg
	@- $(RM) *.idx
	@- $(RM) *.lof
	@- $(RM) *.lot
	@- $(RM) *.bbl
	@- $(RM) *.blg
	@- $(RM) -r auto/

check: all

dist: check
	zip "$(PROJECT_NAME)_$(VERSION).zip" \
	    Makefile		     \
	    $(DOC_FILES)             \
	    $(BIB_FILES)             \
	    $(IDX_FILES)             \
	    $(OTHER_DIST_FILES)      \
	    $(PDF_ARTIFACTS)

distclean: clean
	@- $(RM) "$(PROJECT_NAME)_$(VERSION).zip"
