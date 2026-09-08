#!/bin/bash
# Build the zip to upload to Overleaf.
#   ./package.sh          paper only (staging folders excluded)  <- default
#   ./package.sh --all    include Ideation/ and Literature Review/
cd "$(dirname "$0")"
./clean.sh > /dev/null
rm -f paper.zip

if [ "$1" = "--all" ]; then
  zip -r paper.zip . \
    -x '*.DS_Store' '*.git*' 'paper.zip' 'main.pdf' > /dev/null
  echo "paper.zip written (including staging folders)"
else
  zip -r paper.zip main.tex refs.bib sections figures \
    -x '*.DS_Store' > /dev/null
  echo "paper.zip written (paper only)"
fi
echo
unzip -l paper.zip | awk 'NR>3' | sed '$d' | sed '$d'
