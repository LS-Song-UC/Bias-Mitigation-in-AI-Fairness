# Literature Review

Staging area for everything we read. Nothing is compiled from here, and no
citation reaches `refs.bib` until it has been read and curated.

`refs.bib` at the project root is the *output* of this folder, not a dumping
ground. A key in `refs.bib` is a commitment: it means we have read the work and
can say what it does. Exporting a search result straight into the bibliography
is how papers end up citing things that do not say what the sentence claims.

## What lives here

- `screening-log.md` — every source encountered, with a verdict.
- `notes/` — one file per source we actually read, named by citekey
  (`knuth1984texbook.md`).
- `notes/_template.md` — copy this for each new source.

## The pipeline

    found -> screened -> read -> noted -> discussed -> refs.bib -> cited

A source moves right only when the step is genuinely done. Two rules:

- **Screening is not reading.** Title and abstract get a verdict in the log.
  That verdict is provisional and never justifies a citation.
- **A note is not a summary.** The point is what this source does *for our
  argument* — supports it, complicates it, pre-empts it, or supplies a method.
  If a source does none of those, it is `[exclude]` however good it is.

## Verdicts

    [found]      captured, not yet screened
    [screen]     abstract read, awaiting decision
    [read]       read in full, note written
    [include]    discussed, belongs in refs.bib
    [exclude]    not for this paper (record why)
    [check]      cited by someone else; we have not verified the claim

`[check]` is the important one. Anything we know only second-hand stays
`[check]` until we read the primary source. Citation chains propagate errors
quietly, and the fix is cheap only before publication.

## Adding to refs.bib

When a source reaches `[include]`, we discuss placement and then add the BibTeX
entry to the root `refs.bib` — hand-checked, not exported blind. Author lists,
capitalisation (`{DNA}` braces to protect it), page ranges, and DOIs are all
routinely wrong in publisher-supplied BibTeX.
