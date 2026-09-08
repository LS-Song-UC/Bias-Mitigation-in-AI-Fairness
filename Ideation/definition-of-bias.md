# Definition of Bias

**Status:** `[thinking]`

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

## Supporting ground worth developing

- **Inductive bias is not optional.** No-free-lunch results say generalization
  without inductive bias is impossible. This turns "indiscriminate mitigation
  costs performance" from an empirical complaint into something closer to a
  formal claim.
- **Fairness through unawareness is known to fail.** Dropping protected
  attributes does not remove their influence (proxies remain) and can make
  disparities harder to detect. Established support for the "removing context
  harms" half of the idea.
- **Impossibility results.** Calibration and error-rate balance cannot generally
  hold simultaneously. Shows mitigation targets genuinely conflict, so *which*
  bias you target must be chosen rather than applied wholesale.

## Possible format

Undecided.

- **Prose definition section**, probably early, before methods.
- **A 2×2**: statistically valid (yes/no) × harmful (yes/no). Attractive because
  the idea *is* a claim about which cell deserves intervention — written as
  prose it reads as a caveat, drawn as a partition it reads as a contribution.
- **A worked pair** of cases carrying the boundary rather than an abstract
  criterion.

## Open questions

- What is the operational test for "harmful"?
- Does the argument apply to training data, learned representations, model
  outputs, or all three? These have different mitigation costs.

---

Stress-tests against this idea *in isolation*:
[`definition-of-bias-objections.md`](definition-of-bias-objections.md).
Those are scoped to the fragment, not to the research programme.
