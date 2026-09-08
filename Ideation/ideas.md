# Ideas

Newest at the top. See `README.md` for status markers and the promotion gate.

## Scope

**This is engineering, not ethics.** The research implements bias mitigation as
*treatment* for standing LLMs and AI systems; it does not argue what is fair.
See [`scope.md`](scope.md) — it constrains every note here, and the objection
files have been re-triaged against it.

Consequence for positioning: the formal counterparts to these ideas (demographic
parity, defeasible reasoning, absolute-vs-relative effect) are **machinery to
build with**, not rivals to argue against. The contribution is the treatment
pipeline and its implementation, not a new conception of fairness.

## Shape so far

The five ideas divide into two stages, and keeping them apart is what stops the
framework contradicting itself:

    DIAGNOSIS  (ideas 1-4)          TREATMENT  (idea 5)
    is there a harm, and where?     the harm is established; now what,
                                    and did it work?

    1. Bias is neutral until        5. Adjustment measured against its
       shown harmful                   baseline; impact assessed ex ante
    2. Harm sits in the                and ex post, systemically and
       inference, not the              against a reference default
       identification
    3. Deviation is diagnostic,
       not automatically a defect
    4. Inference licensed by
       default, revisable by duty

Treatment inherits the sign of the adjustment from diagnosis rather than
assuming it. The two halves can also be evaluated independently: whether the
framework diagnoses correctly, and whether it treats effectively.

**Problems recurring across ideas — candidates for treatment in their own right:**

- **Burden of proof / operational test for harm** (ideas 1, 2, 3; partly
  answered by 4). Lives in the diagnosis stage. Under the engineering scope this
  hardens into a requirement: the threshold must be *computable at runtime*, or
  it cannot be implemented.
- **The reference class** — proportional to *what* population (3), relative to
  *what* default (5). Does decisive work in both, and in an implementation it is
  a parameter someone has to actually set.

**Now the more pressing question:** where treatment attaches. "Standing systems"
implies no retraining, which narrows the surface to output filtering,
inference-time steering, in-context correction, and activation editing. That
choice determines what can be built and measured at all — see `scope.md`.

---

## [thinking] Where We Come From, Where We're Going

Adjustment must be measured against its baseline: 5 points on a 1% status quo is
a 500% change. Impact assessed both ex ante and ex post, both systemically and
against a reference default.

Full note: [`where-we-come-from-where-were-going.md`](where-we-come-from-where-were-going.md)
Stress-tests: [`where-we-come-from-where-were-going-objections.md`](where-we-come-from-where-were-going-objections.md)

**Amended by the author.** Scoped to the *treatment* stage: it presupposes a
completed diagnosis and inherits the sign of "positive contribution" from ideas
1-4 rather than assuming it. Identification accuracy removed from the objective
— attribution is what gets adjusted; identification stays upstream. Internal
tension resolved.

**Reference-class problem, 2nd appearance** — "relative to what default?" here,
"proportional to what population?" in idea 3.

## [thinking] Unbiased Identification Beyond a Reasonable Doubt

Inference is defeasible, not forbidden: a well-evidenced first hypothesis is
licensed, conditional on a duty to revise when new information arrives.
Unwarranted skepticism collapses the structure of inference.

Full note: [`identification-beyond-reasonable-doubt.md`](identification-beyond-reasonable-doubt.md)
Stress-tests: [`identification-beyond-reasonable-doubt-objections.md`](identification-beyond-reasonable-doubt-objections.md)

**Partially answers the recurring burden-of-proof question** — default licensed,
burden on the challenger, conditional on an update duty. Threshold and
enforcement still open.

## [thinking] Proportional Representation

Should a 10% group get exactly 10% of representation/consideration? Posed as an
open question, scaffolded on legal equality of individual standing. Candidate
answer from ideas 1-2: proportionality is diagnostic, not owed — a gap is a
signal to investigate, not a defect to erase.

Full note: [`proportional-representation.md`](proportional-representation.md)
Stress-tests: [`proportional-representation-objections.md`](proportional-representation-objections.md)

**Recurring across all three ideas:** burden of proof / the operational test for
harm. It has now surfaced as an open question three times, which suggests it is
the central problem rather than a loose end.

## [thinking] The "So What?" Question

Harm lives in the inferential step, not the identification. Being Asian is
benign; concluding *bad driver* from it, absent evidence, is the harm. So the
audit target is the follow-up to identification, not identification itself.

Full note: [`so-what-question.md`](so-what-question.md)
Stress-tests: [`so-what-question-objections.md`](so-what-question-objections.md)

Pairs with *Definition of Bias*: idea 1 argues against indiscriminate
mitigation, idea 2 names the alternative.

## [thinking] Definition of Bias

Bias is agnostic until proven harmful; most inherited bias is benign and
load-bearing context, so indiscriminate mitigation costs performance for
nothing. The research targets *harmful* bias — conclusions drawn through
improper summarization that misrepresent demographics.

Full note: [`definition-of-bias.md`](definition-of-bias.md)
Stress-tests: [`definition-of-bias-objections.md`](definition-of-bias-objections.md)

## [raw] Example entry — delete me

**The idea.** One or two sentences. What is the claim?

**Why it might matter.** Who changes their mind if this is right?

**What would kill it.** The result or argument that would make this wrong.
If you cannot name one, the idea is not yet specific enough to promote.

**Possible format.** Prose / equation / figure / table — and why that one.

**Open questions.**
- 

---
