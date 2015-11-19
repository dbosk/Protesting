.PHONY: all wc
all: protesting.pdf

protesting.pdf: protesting.tex
protesting.pdf: llncs libbib.sty

wc: protesting.tex
	for f in $^; do echo -n "$${f}: "; detex $${f} | wc -w; done

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
INCLUDE_LIBBIB=libbib
include ${INCLUDE_LIBBIB}/libbib.mk
