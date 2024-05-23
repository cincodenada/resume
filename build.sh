#!/bin/bash
xelatex --interaction=nonstopmode resume.tex
xdg-open resume.pdf &
