#!/bin/bash
# Local build: pdflatex -> bibtex -> pdflatex x2
# (Overleaf runs this cycle for you; this is for checking before upload.)
cd "$(dirname "$0")"
pdflatex -interaction=nonstopmode main.tex > /dev/null
bibtex main > /dev/null
pdflatex -interaction=nonstopmode main.tex > /dev/null
pdflatex -interaction=nonstopmode main.tex > /dev/null

echo "--- errors ---"
grep -E "^! " main.log || echo "none"
echo "--- unresolved references ---"
grep -E "undefined" main.log || echo "none"
echo
if [ -f main.pdf ]; then
  echo "Built: main.pdf ($(grep -oE '\([0-9]+ pages' main.log | tail -1 | tr -d '(') )"
else
  echo "NO PDF PRODUCED -- see main.log"
fi
