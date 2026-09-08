# LaTeX project template (two-column)

Ready to upload to Overleaf, and it compiles locally as-is.

## Two-column specifics

Set by `\documentclass[10pt,twocolumn,a4paper]{article}`. Four things behave
differently than in one-column, and all four are already handled in `main.tex`:

1. **The abstract does not span the columns by default.** `\maketitle` does,
   but `abstract` would drop into column 1. The `\twocolumn[\begin{@twocolumnfalse}
   ... \end{@twocolumnfalse}]` block spans both; it needs `\makeatletter`
   around it because of the `@` in the environment name.
2. **Float widths.** Inside a column, `\textwidth` is the width of the *page*,
   not the column. Use `\linewidth` for column-width figures; `\textwidth` is
   correct only inside `figure*`/`table*`.
3. **Starred floats span both columns** but can only go at the top of a page,
   and never on the page where they are declared. Declare them a page early.
   LaTeX also cannot place a `figure*` on the last page if nothing follows it.
4. **The last page's columns end ragged.** `\balance` (from the `balance`
   package, commented in the preamble) evens them. It is present on Overleaf.

Wide equations have no automatic fix — break them with `split`, or set them
in a `figure*`.

If you switch to a venue's own class file (`IEEEtran`, `acmart`, `elsarticle`),
that class supplies the two-column layout itself: drop the `twocolumn` option
and the `geometry`/`columnsep` lines, since fighting a journal class over
margins is the fastest way to get desk-rejected.

## Uploading to Overleaf

1. Run `./package.sh` — cleans artefacts and writes `paper.zip` with just the
   paper (`main.tex`, `refs.bib`, `sections/`, `figures/`).
2. Overleaf -> **New Project -> Upload Project** -> drop the zip.
3. Directory structure is preserved. `main.tex` is auto-detected as the root.

Use `./package.sh --all` to include the staging folders as well. Default is to
leave them out: they are working material, they are not compiled, and Overleaf's
file tree gets noisy fast.

To update an existing Overleaf project later, drag individual changed files
into it — same filename overwrites in place.

**Compiler:** pdfLaTeX (Overleaf: Menu -> Compiler). Default, no change needed.

## Building locally

    ./build.sh     # pdflatex -> bibtex -> pdflatex x2 -> main.pdf
    ./clean.sh     # remove artefacts

Two extra pdflatex passes are not superstition: pass 1 collects labels and
citation keys, bibtex resolves them against refs.bib, passes 2-3 settle
cross-references and page numbers.

## Layout

    main.tex              preamble, title, \input list, \bibliography
    refs.bib              bibliography database
    sections/*.tex        one file per section
    figures/              artwork; \graphicspath means \includegraphics{name}
                          finds figures/name.pdf without the folder prefix

    Ideation/             staging: ideas, framings, outlines
    Literature Review/    staging: sources, reading notes, screening log

The two staging folders are **not compiled**. Nothing moves from them into the
paper until the content and format have been discussed and curated — see
`WORKFLOW.md`. `refs.bib` is the output of `Literature Review/`, not a place to
dump search exports.

The space in `Literature Review/` is harmless precisely because nothing there is
ever `\input`; LaTeX handles spaces in filenames badly, so keep it that way.

## Bibliography

BibTeX + natbib. `\citep{key}` -> (Author, Year), `\citet{key}` -> Author (Year).
Change the look via `\bibliographystyle{...}`: `plainnat`, `unsrtnat`,
`abbrvnat`, `ieeetr`. Only cited entries appear; `\nocite{*}` forces all.

If a journal demands **biblatex** instead, swap the natbib lines for:

    \usepackage[backend=biber,style=numeric]{biblatex}
    \addbibresource{refs.bib}

and replace `\bibliography{refs}` with `\printbibliography`. Overleaf runs
biber automatically. Locally you would need `sudo tlmgr install biblatex biber`.

## Local vs Overleaf

This machine has TeX Live 2026 **BasicTeX** — a subset. Overleaf ships full
TeX Live, so anything that builds here builds there, but not the reverse.
Commented out in `main.tex` because they are missing locally:
`cleveref`, `siunitx`, `enumitem`, `balance`. Uncomment them once on Overleaf,
or `sudo tlmgr install cleveref siunitx enumitem balance` to use them here too.

For Chinese text you would want `\usepackage{ctex}` and the **XeLaTeX**
compiler — present on Overleaf, needs `sudo tlmgr install ctex` here.

## License

Dual-licensed, split by what the file *is*:

| | |
|---|---|
| **CC BY 4.0** | The manuscript and research material — `main.tex`, `sections/`, `figures/`, `refs.bib`, `Ideation/`, `Literature Review/` |
| **MIT** | The code — `build.sh`, `clean.sh`, `package.sh`, and any scripts added later |

Full texts: [`LICENSE-CC-BY-4.0.txt`](LICENSE-CC-BY-4.0.txt) and [`LICENSE`](LICENSE).

MIT is a software licence: it talks about "the Software", warranties, and
liability, and says nothing useful about attribution for a piece of writing.
CC BY 4.0 is the standard for manuscripts and is what most open-access funder
mandates require — it permits reuse and adaptation provided the work is
credited.

GitHub will report this repository as MIT, since that is what `LICENSE`
contains. That is deliberate: it keeps automated tooling correct about the code.
This section is the authoritative statement for everything else.

**If this paper is submitted to a venue**, check the copyright agreement before
relying on the above. Some publishers require an exclusive transfer that
supersedes a prior CC licence for the version of record, though most permit a
CC BY preprint to remain posted.
