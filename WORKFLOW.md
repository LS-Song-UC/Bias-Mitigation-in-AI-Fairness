# Workflow

The compiled paper is downstream of everything else. Two staging folders feed
it, and neither one feeds it automatically.

    Ideation/              ideas, framings, outlines      -> sections/*.tex
    Literature Review/     sources, notes, screening      -> refs.bib

## The rule

**Nothing goes into the PDF until we have discussed the content and the format,
and the material has been curated.**

Not a style preference. Two failure modes it prevents:

- **Accretion.** Text that entered because it was written, not because it was
  needed. It is nearly impossible to remove later, because by then it reads
  like part of the argument.
- **Unread citations.** A `refs.bib` filled from search exports, where nobody
  can say what half the entries actually claim.

## What "discussed" means

Before anything is drafted into `sections/`:

1. **Content** — the claim in one sentence, the evidence for it, and what it
   displaces. Space is zero-sum; adding is also removing.
2. **Format** — prose, equation, figure, or table, decided *first*. Format is
   not packaging. An argument that works as a figure often fails as a
   paragraph, and choosing after drafting means rewriting.

Before anything reaches `refs.bib`: the source is read, noted, and we agree on
what it does for the argument and where it sits.

## Directionality

Material moves toward the PDF only. When something in the paper turns out to be
wrong or unsupported, cut it from `sections/` and drop a `[parked]` note back in
`Ideation/ideas.md` with the reason — do not leave it in the document while it
is being reconsidered. The compiled PDF should always represent the current
committed state of the argument, never work in progress.
