# Objections — Unbiased Identification Beyond a Reasonable Doubt

Parallel to
[`identification-beyond-reasonable-doubt.md`](identification-beyond-reasonable-doubt.md).
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

---

## 1. Agreement is highest exactly where being wrong costs most — `[live]`, **promoted to central**

> **Becomes a measurement-validity problem, which is squarely in scope.** If
> the detector is validated against human agreement, it inherits this failure
> exactly where the research matters. This now constrains *how the system is
> evaluated*, not merely how the idea is justified — and evaluation design is
> the paper.


This is the load-bearing one.

The warrant offered is consensus: 9 in 10 human judgements align with the
hypothesis. But the rate of agreement is a function of the base rate. Where a
minority is small, majority judgement will agree at a high rate *and* will be
wrong about precisely the members of that minority. The confidence and the harm
are produced by the same fact.

So consensus cannot be the warrant, because it is systematically highest in the
cases the research exists to protect. A criterion that returns "well-grounded"
most strongly where the error is most concentrated is measuring popularity of
inference, not its correctness.

**What it would take to close.** Ground the licence in something other than
inter-observer agreement — calibration against ground truth, evidential
diagnosticity per cue, or an explicitly subgroup-conditional error bound. The
idea itself does not depend on consensus; it is the *justification offered* that
is fragile, and swapping it may cost nothing structurally.

*Note:* this is a version of the accurate-but-harmful problem in new clothing —
third appearance now, in a form where it bites the mechanism rather than the
definition.

## 2. The standard invoked and the number given do not match — `[live]`

"Beyond a reasonable doubt" is the criminal standard, generally understood as
near-certainty. 9/10 is well below it — nearer "clear and convincing", and far
above "preponderance". As written the title claims one bar and the parenthetical
sets a much lower one.

More substantively: **BARD is deliberately asymmetric.** It is set high because
convicting the innocent is treated as far worse than acquitting the guilty. To
import it is to claim a matching asymmetry in identification errors — and the
direction of that asymmetry needs stating. If false identification of a minority
member is the costlier error, then a true BARD standard argues for *more*
hesitancy in exactly the cases the fragment wants to license, which inverts the
intended use.

**What it would take to close.** Either pick a standard deliberately and state
its error asymmetry, or drop the legal borrowing and set a threshold on its own
terms. The legal framing is rhetorically strong and technically loose; it may be
doing more harm than good here.

## 3. The example is the most contested possible case — `[live]`

Not a moral objection — a strategic one.

Automatic gender recognition has an established critical literature arguing the
task is ill-posed rather than merely difficult, and that presentation-based
inference fails precisely for the population most affected by it. Choosing it as
the flagship illustration of *warranted* identification invites the paper to be
read as a defence of that specific application, and the reader will litigate the
example instead of the principle.

The principle — licensed prior plus duty to update — is general and does not
need this case. Any defeasible identification carries it: language, occupation,
location from an address.

There is also a seam inside the example. The cues listed mix self-presentational
signals (suit, mannerisms) with physiological ones (Adam's apple), which are
different kinds of evidence with different reliability and different meanings
when they conflict. This is the same aggregation seam flagged in idea 2's
objections.

**What it would take to close.** A less contested illustration, and if the
gender case is kept, keeping it as the *hard* case examined explicitly rather
than the easy one assumed. The pattern from idea 1 repeats: leading with an
example chosen for how clearly it works makes the thesis look easier than it is.

## 4. The update assumes a channel that often does not exist — `[live]`, **promoted to core experiment**

> **This inverts under the engineering scope.** For an LLM the update channel
> *does* exist — it is the conversation. "Does the model revise an attribution
> when corrected in context, and does the revision persist across turns?" is a
> concrete, runnable measurement on standing models requiring no retraining.
> The objection becomes the most tractable experiment in the programme.


"Adjust upon the introduction of new information" presumes new information
arrives. In deployed systems it frequently cannot: there may be no correction
mechanism, the affected person may never learn what was inferred, and where a
channel exists the cost of using it falls on them — repeatedly, per system.

A licence to hypothesise first, paired with an update duty that is unenforceable
in practice, collapses to a licence to hypothesise. The duty is what makes the
default defensible, so its practical availability is not an implementation
detail.

**What it would take to close.** Treat the update channel as part of the
framework rather than an assumption: who supplies correction, at what cost, with
what latency, and what the system owes when no channel exists. This may be the
most publishable part of the idea — it is a design requirement, not just a
criterion, and it is where the framework would touch real systems.
