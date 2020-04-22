#!/bin/bash
SCPDEST="cincodenada.com:~/cincodenada/stuff/"
CURBRANCH=$(echo "-"$(git rev-parse --abbrev-ref HEAD) | sed -e 's/-master//')
cp resume.pdf resume$CURBRANCH.pdf
scp -C resume$CURBRANCH.pdf $SCPDEST
