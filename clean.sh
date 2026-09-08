#!/bin/bash
# Delete build artefacts. Never upload these to Overleaf.
cd "$(dirname "$0")"
rm -f main.aux main.bbl main.blg main.log main.out main.toc main.fls \
      main.fdb_latexmk main.synctex.gz sections/*.aux
echo "cleaned"
