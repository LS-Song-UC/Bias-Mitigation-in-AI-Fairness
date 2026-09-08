# Objections — Definition of Bias

Parallel to [`definition-of-bias.md`](definition-of-bias.md).

## Scope of these objections

**These are stress-tests against that one idea read as a standalone fragment.
They are not objections to the research.** The idea is a seed, not a thesis, and
these were written without the surrounding framework — the operational
machinery, the evaluation design, the scope conditions — none of which is
captured yet.

So each one may be:

- **already answered** by material not yet written down;
- **out of scope** because the research never claims what the objection attacks;
- **dissolved** once the idea sits next to the rest of the argument;
- or genuinely live.

Treat them as things that must not be *silently* left open by the finished
paper — not as debts this fragment owes on its own. An objection that is
answered elsewhere in the programme should be marked resolved here with a
pointer, not argued with.

**Status key:** `[live]` still open · `[resolved]` answered (say where) ·
`[scoped-out]` not something the research claims

---

## 1. Accurate-but-harmful bias — `[live]`

The fragment grounds harm in *misrepresentation*: improper summarization that
incorrectly represents demographics. Clean and testable, which is its appeal.

The gap: a model can be well-calibrated on its training distribution and still
cause harm, because the data faithfully records an unjust process. Recidivism
prediction is the standard case — features tracking differential policing
predict *arrest* accurately while entrenching the disparity that produced the
label. Nothing is misrepresented in the estimator's own terms.

**What it would take to close.** Either a second criterion beyond
representational accuracy, or an explicit scope condition — that the research
addresses representational bias specifically and treats label-generation
injustice as a distinct problem. The second is a perfectly respectable move and
much cheaper than the first; it just has to be stated rather than assumed.

*Note:* this is the objection I would expect a reviewer to raise first, which is
a claim about reviewers, not about whether the idea is right.

## 2. The menstruation example sits at the easy end — `[live]`

As an illustration it is close to a best case: biologically grounded,
uncontested, clinically load-bearing. It establishes that *some* benign
group-conditional bias exists — which is all it is being asked to do here.

The concern is only about load-bearing use later. The hard cases look just like
it: the eGFR race coefficient was defended as biological reality for years, then
removed as harmful and unfounded. So "is it biological" cannot be the criterion,
since that is the test that failed.

**What it would take to close.** Nothing, if the example stays illustrative. If
the paper's boundary criterion ends up resting on it, pair it with a hard case.

## 3. "Bias" is overloaded — `[live]`

Four senses in circulation:

| Sense | Meaning | Neutral? |
|---|---|---|
| Statistical | $\mathbb{E}[\hat\theta] - \theta$ | Yes, technical |
| Inductive | The assumptions that make generalization possible | Yes, *necessary* |
| Social / demographic | Systematic differential treatment across groups | Contested |
| Cognitive | Human reasoning heuristics | Contested |

"Agnostic until proven harmful" is near-trivially true of the first two and is
the contested claim for the third. A reader taking the menstruation example as
inductive bias and the mitigation critique as social bias can call it
equivocation.

**What it would take to close.** Fix the sense explicitly, once, early. Cheap.
The disambiguation may itself be worth something, since the conflation is
common — this is closer to an opportunity than a defect.
