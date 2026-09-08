# Unbiased Identification Beyond a Reasonable Doubt

**Status:** `[thinking]`

---

## The idea (as captured)

If a person is dressed in suits, speaks in a deep voice, carries themselves with
male-identifying mannerisms, visibly shows an "Adam's apple", among other
identifying traits — an identification of this individual as male-representing
is considered grounded beyond a reasonable doubt (9/10, for instance, of human
judgement will align with the original hypothesis).

Over-adjustment in identification leads to a tax in performance. The goal is to
allow updates in the framework upon the introduction of new knowledge/context
*without denying the right of first hypothesis* — unwarranted skepticism denies
the establishment of first foundations and collapses the structure of inference.

Reasonable identification is allowed on first attempts, then the system should
adjust upon the introduction of new information.

---

## Claim, in one sentence

Inference is defeasible, not forbidden: a system is entitled to a reasonable
first hypothesis from available evidence, and its obligation is to revise
promptly when new information arrives — not to withhold judgement in advance.

## Why it might matter

It supplies the **epistemics** the other three ideas rest on, and it is the
first thing here that speaks directly to the question that keeps recurring.

Ideas 1–3 each left open some version of *who must prove what*. This proposes an
answer with two parts:

1. **Default.** A well-evidenced first hypothesis is licensed. The burden sits
   with the challenger, not with the system, before any contrary information
   exists.
2. **Duty.** That licence is conditional on revising when contrary information
   arrives. A hypothesis that will not update is no longer a hypothesis.

The second half is what stops the first from being a rationalisation engine —
which was the strongest objection to the idea-3 synthesis. Licensing the prior
is only defensible if the update obligation is real and enforced.

## Formal counterparts worth developing

- **Bayesian updating**, the obvious one. "Right of first hypothesis" is a prior;
  "adjust upon new information" is conditioning. The claim that unwarranted
  skepticism *collapses the structure of inference* is close to the observation
  that a uniform or absent prior does not yield neutrality — it yields an
  inability to infer at all. This is the same argument as idea 1's no-free-lunch
  point, arriving from epistemology rather than learning theory. That the two
  converge is worth noting explicitly.
- **Defeasible / non-monotonic reasoning.** Default logic and circumscription
  formalise exactly this: conclusions held by default, withdrawn when a defeater
  appears. An older AI tradition that fairness work rarely connects to, which
  may be an opening rather than a gap.

## Relationship to ideas 1–3

| | Contribution |
|---|---|
| 1. Definition | Bias is neutral until shown harmful |
| 2. So what? | Harm enters at the inference, not the identification |
| 3. Proportionality | Deviation is diagnostic, not automatically a defect |
| 4. First hypothesis | Inference is licensed by default and revisable by duty |

Four now reads as the epistemic floor the others stand on. It is also the only
one that proposes a *mechanism* rather than a criterion, which may make it the
methodological core.

## Possible format

Undecided.

- **Prose**, probably early — it is a premise, and premises usually precede.
- **A state diagram**: prior → identification → new information → revision, with
  the failure modes marked (refusal to hypothesise; refusal to update). This
  would pair with the pipeline figure proposed for idea 2, and the two may be
  the same figure.
- **A worked example** carrying the update cycle end to end.

## Open questions

- What threshold licenses a first hypothesis, and is "beyond reasonable doubt"
  the right standard? (See objections — the standard invoked and the 9/10 figure
  may not match.)
- What counts as new information sufficient to trigger revision, and how strong
  must it be?
- **Who supplies the update, through what channel, at what cost to them?** The
  framework assumes correction arrives. In deployed systems it often cannot.
- Does the duty to update operate per-interaction, per-session, or persistently?

---

Stress-tests: [`identification-beyond-reasonable-doubt-objections.md`](identification-beyond-reasonable-doubt-objections.md).
