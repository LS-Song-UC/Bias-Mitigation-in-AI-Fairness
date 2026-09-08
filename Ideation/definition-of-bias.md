# Definition of Bias

**Status:** `[thinking]` — close to `[discuss]`; the core claim is stable, the
boundary condition is not.

---

## The idea (as captured)

Bias exists everywhere and is agnostic until proven harmful. Most inherited
bias is benign. For instance, the acknowledgement of menstrual cycles being a
biological phenomenon exclusive to females is helpful knowledge that still
manifests within the framework of bias. These relational concepts aid in
categorization and classification and are treated as foundational
knowledge/context. Indiscriminate mitigation will harm the system through
meaningless performance cost by removing context.

The goal of the research is to identify and evaluate potentially *harmful*
bias — conclusions drawn through improper understanding/summarization that
incorrectly represent demographics.

---

## Claim, in one sentence

Bias is a neutral structural property of a representation; harm is a separate
predicate that must be demonstrated rather than assumed, so mitigation should be
targeted at demonstrated harm rather than applied to group-conditional
structure as such.

## Why it might matter

It inverts the default posture of much mitigation work. If the field's implicit
stance is "group-conditional signal is suspect until neutralised," this argues
"it is informative until shown harmful" — which changes what you measure, what
you strip, and what you count as a cost. The performance argument is the lever:
indiscriminate mitigation is not merely over-cautious, it is *destructive of
information*, and that is measurable.

---

## What would kill it

Three real objections, roughly in order of how much damage they do.

### 1. Accurate-but-harmful bias

The captured definition grounds harm in *misrepresentation* — improper
summarization that "incorrectly represents demographics." This is clean, but it
may be too narrow. A model can be statistically well-calibrated on its training
distribution and still cause harm, because the data faithfully records an unjust
process. Recidivism prediction is the standard case: features correlated with
differential policing can yield accurate predictions of *arrest* while
entrenching the disparity that produced the label.

If harm can be accurate, then "incorrect representation" cannot be the whole
definition of harmful bias, and the paper needs a second criterion. **This is
the objection most likely to be raised first, and it needs an answer before
drafting.**

### 2. The example sits at the easy end

Menstruation is close to a best case: the group-conditional fact is biologically
grounded, uncontested, and clinically load-bearing. Almost nobody argues for
stripping it.

The hard cases are the ones that *look* like it and are not. The eGFR race
coefficient in kidney function estimation was defended for years as reflecting
biological reality, then removed as harmful and unfounded. "Biological" did not
settle it.

So the criterion cannot be *is this fact biological* — that is exactly the test
that failed. The paper's contribution has to be the boundary, and picking an
easy example risks making the thesis look easier than it is. Worth pairing the
menstruation case with a hard case in the same section.

### 3. "Bias" is overloaded

At least four distinct senses are in play, and the argument moves between them:

| Sense | Meaning | Neutral? |
|---|---|---|
| Statistical | $\mathbb{E}[\hat\theta] - \theta$ | Yes, technical |
| Inductive | The assumptions that make generalization possible | Yes, *necessary* |
| Social / demographic | Systematic differential treatment across groups | Contested |
| Cognitive | Human reasoning heuristics | Contested |

"Bias is agnostic until proven harmful" is straightforwardly true of the first
two and is the contested claim for the third. A reviewer who reads the menstrual
example as sense 2 and the mitigation critique as sense 3 will call it
equivocation. Fixing the sense explicitly, early, is cheap insurance — and the
disambiguation may itself be a contribution, since the conflation is common.

---

## Supporting ground worth developing

- **Inductive bias is not optional.** No-free-lunch results say generalization
  without inductive bias is impossible. This turns "indiscriminate mitigation
  costs performance" from an empirical complaint into something closer to a
  formal claim.
- **Fairness through unawareness is known to fail.** Dropping protected
  attributes does not remove their influence (proxies remain) and can make
  disparities harder to detect. Established support for the "removing context
  harms" half of the thesis.
- **Impossibility results.** Calibration and error-rate balance cannot generally
  hold simultaneously. Useful because it shows mitigation targets genuinely
  conflict — strengthening the case that *which* bias you target must be chosen,
  not applied wholesale.

---

## Possible format

Undecided — needs discussion.

- **Prose definition section.** Most likely home. Probably §2, before methods.
- **A 2×2.** Statistically valid (yes/no) × harmful (yes/no). The
  accurate-but-harmful cell is the interesting one and the one objection 1
  attacks; a figure would make the paper's target explicit at a glance.
- **A worked pair.** Menstruation (benign, keep) against eGFR race coefficient
  (looked benign, was harmful) — carries the boundary argument better than an
  abstract criterion.

The 2×2 is attractive because the thesis *is* a claim about which cell matters.
Deciding this before drafting matters: written as prose it reads as a caveat,
drawn as a partition it reads as a contribution.

## Open questions

- What is the operational test for "harmful"? Without one, "agnostic until
  proven harmful" is a stance, not a method — and the evaluation half of the
  stated goal has nothing to stand on.
- Who bears the burden of proof, and what evidence discharges it?
- Is "incorrectly represent demographics" measurable as calibration error within
  subgroups, or is something else meant?
- Does the argument apply to training data, learned representations, model
  outputs, or all three? These have different mitigation costs.
