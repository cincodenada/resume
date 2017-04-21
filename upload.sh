#!/bin/bash
SCPDEST="cincodenada.com:~/cincodenada/stuff/"
CURBRANCH=$(git rev-parse --abbrev-ref HEAD)
cp resume.pdf resume-$CURBRANCH.pdf
scp -C resume-$CURBRANCH.pdf $SCPDEST
