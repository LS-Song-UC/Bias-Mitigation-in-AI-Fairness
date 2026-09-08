# Objections — Proportional Representation

Parallel to [`proportional-representation.md`](proportional-representation.md).
Scope conventions as in
[`definition-of-bias-objections.md`](definition-of-bias-objections.md).


> ## Re-triaged under the engineering scope
>
> See [`scope.md`](scope.md). The research implements treatment; it does not
> argue what is fair. Normative objections are inputs the framework consumes,
> not results it owes. Statuses below are updated accordingly — an objection
> marked `[scoped-out]` is not answered, it is **not this paper's to answer**,
> and usually needs one sentence of scope declaration rather than a defence.

**Status key:** `[live]` · `[resolved]` (say where) · `[scoped-out]`

> **Legal claims below are from memory and unverified.** They are recorded as
> leads in the screening log, not as established fact. Verify before any of this
> reaches the paper — a mis-stated statute in a fairness paper is fatal, and
> this material is easy to get subtly wrong.

---

## 1. The legal analogy may cut against the idea — `[scoped-out]`

> **Scoped out.** The analogy is motivational framing, not a load-bearing
> premise, and the paper does not argue from law. Keep it brief and accurate
> in the introduction, or drop it. The verification burden was only worth
> carrying if the argument rested on it — it does not.


The fragment reads legal equality as supporting proportional group
representation. It is worth checking whether the same systems explicitly
*decline* that extension.

To verify: the US Voting Rights Act §2 is believed to contain an express
disclaimer that nothing in it establishes a right to have members of a protected
class elected in proportion to their share of the population. If so, the legal
tradition invoked holds equal individual weight while specifically refusing to
convert it into group proportionality — which is close to the opposite of the
inference the fragment draws. Related: quota-based admissions have been
repeatedly struck down in US law while individualised consideration was, for a
period, permitted.

Canada may point the other way — Charter s.15(2) is understood to permit
ameliorative programs targeting disadvantaged groups, so "the legal consensus"
may not be one consensus at all.

**What it would take to close.** Verify both, then either narrow the analogy to
the individual-weight claim it actually supports, or make the jurisdictional
split part of the argument. The split is arguably *more* interesting than the
analogy: if two mature legal systems answer this differently, "what does the law
think" cannot settle it, and the paper has to argue on other grounds.

## 2. Equal individual treatment does not aggregate to proportional group outcomes — `[live]`

One-person-one-vote gives each person equal weight in a decision *they all
participate in*. Model representation usually concerns *selection or allocation
across* people. These aggregate differently.

Under equal individual treatment, group outcomes are proportional only if the
groups are identically distributed on whatever criterion is being applied. Where
they are not, identical individual treatment produces disproportionate group
outcomes — with no unequal weighting anywhere in the process. The voting analogy
cannot bridge this, because voting has no selection criterion to be unevenly
distributed against.

**What it would take to close.** This may not need closing so much as stating:
it is the formal reason the question is genuinely open rather than settled by
the analogy, and it sharpens what the paper is asking. It does, though, remove
the analogy's power to *support* proportionality.

## 3. The synthesis makes disparity easy to rationalise — `[live]` (narrowed)

> **Update.** [`identification-beyond-reasonable-doubt.md`](identification-beyond-reasonable-doubt.md)
> proposes the missing account: the default is that a well-evidenced hypothesis
> is licensed (burden on the challenger), *conditional on* a duty to revise when
> contrary information arrives. The update duty is what stops the licence from
> becoming a rationalisation engine.
>
> Two things keep this open. The duty is only as strong as its enforcement — see
> objection 4 there, on update channels that do not exist in practice. And the
> threshold licensing the initial hypothesis is still unset. So the *shape* of
> the answer now exists; the calibration does not.

### Original statement

This targets the candidate synthesis in the idea file, not the captured idea.

If proportionality is diagnostic rather than owed, and any gap may be attributed
to a "licensed pathway," then the framework can in principle justify almost any
existing disparity — one need only produce a licensed-looking pathway. The
position is only as strong as the licensing criterion, and a permissive
criterion turns the whole framework into a rationalisation engine.

This is the mirror image of idea 1's complaint about indiscriminate mitigation:
one over-corrects, the other under-corrects, and neither is obviously worse.

**What it would take to close.** An account of **burden of proof**. Who must
demonstrate what, and what happens under uncertainty — does an unexplained gap
default to licensed or unlicensed? That default is doing enormous work and
should be argued explicitly rather than inherited from framing. It is also the
same open question as idea 1's operational test for harm, appearing a third
time; three appearances suggests it is the central problem, not a loose end.

## 4. "Criminal acts, indictments" is a loaded example — `[scoped-out]`

> **Scoped out.** Illustrative phrasing in a normative aside. Swap the
> example if the aside survives into the paper; nothing downstream depends
> on it.


Two separate issues.

**Precision.** An indictment is an accusation, not a conviction. Treating it as
grounds for diminished standing sits badly against the presumption of innocence,
and a reviewer will notice. Probably just imprecise phrasing in a rough capture.

**Substance.** Felony disenfranchisement is one of the most contested cases in
this literature precisely because it is facially neutral with a disparate impact
traceable to the same structural history the paper is examining. It has the
exact shape of the accurate-but-harmful problem: a rule that is legitimate on
its own terms, applied to a population produced by an unjust process.

Using it as the *uncontroversial* example of legitimate diminishment concedes
ground unnecessarily, since it is the case an opponent would most want to
litigate.

**What it would take to close.** A different example — bare minority (age) is
genuinely uncontested and makes the same point. Cheap fix, if the point is just
that legal standing admits exceptions.
