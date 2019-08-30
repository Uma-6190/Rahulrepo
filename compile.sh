#!/bin/bash

pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{first} \input{thesis_main.tex}"
bibtex thesis_main.aux
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{first} \input{thesis_main.tex}"
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{first} \input{thesis_main.tex}"
cp thesis_main.pdf thesis_first.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{arxiv} \input{thesis_main.tex}"
bibtex thesis_main.aux
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{arxiv} \input{thesis_main.tex}"
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{arxiv} \input{thesis_main.tex}"
cp thesis_main.pdf thesis_arxiv.pdf
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{final} \input{thesis_main.tex}"
bibtex thesis_main.aux
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{final} \input{thesis_main.tex}"
pdflatex -synctex=1 -interaction=nonstopmode "\def\submissiontype{final} \input{thesis_main.tex}"
