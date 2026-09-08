# Ideation

Scratch space. Nothing here is compiled, and nothing here goes into the paper
until we have discussed it and agreed on content *and* format.

Think out loud in here. Half-formed is the point — the filtering happens at the
gate, not on the page. Contradicting yourself across entries is fine and often
useful; do not tidy an idea away just because a later one supersedes it.

## What lives here

- `ideas.md` — the running list, newest at the top.
- Anything else you want: outlines, framings, discarded angles, arguments with
  yourself, diagram sketches.

## The gate

An idea leaves this folder only after we have talked through:

1. **Claim** — what is actually being asserted, in one sentence.
2. **Evidence** — what would have to be true, and whether we have it.
3. **Placement** — which section, and what it displaces. A paper is
   zero-sum on space; adding is also removing.
4. **Format** — prose, equation, figure, or table. This is decided *before*
   drafting, because the format changes what the argument needs.

Only then does it get written into `sections/`.

## Objections go in a parallel file

When an idea gets stress-tested, the objections live in
`<idea>-objections.md`, never inside the idea's own file. Two reasons:

- An idea is a **seed, not a thesis**. Objections written against a fragment in
  isolation routinely fail to generalize to the research programme, because the
  framework that answers them is not captured yet. Interleaving them makes a
  half-formed idea read as a defended position under attack.
- Ideas need room to stay generative. A file that argues with itself on every
  line stops being a place to think.

Objections carry their own status: `[live]`, `[resolved]` (with a pointer to
where), or `[scoped-out]`. Resolving one means noting where the answer lives —
not re-arguing it.

## Status markers

Use these in `ideas.md` so the state of each idea is visible at a glance:

    [raw]        just captured, not yet examined
    [thinking]   actively being worked out
    [discuss]    ready for us to talk through
    [promoted]   written into sections/ (note where)
    [parked]     good, wrong paper or wrong time
    [dropped]    considered and rejected (keep the reason)

Never delete a `[dropped]` entry. The reasoning is worth more than the space,
and dropped ideas resurface with alarming regularity.
