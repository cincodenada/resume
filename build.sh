#!/bin/bash
SCPDEST="cincodenada.com:~/cincodenada/stuff/"
xelatex resume.tex
CURBRANCH=$(git rev-parse --abbrev-ref HEAD)
cp resume.pdf resume-$CURBRANCH.pdf
scp -C resume-$CURBRANCH.pdf $SCPDEST
xdg-open resume.pdf &
