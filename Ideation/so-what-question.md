# The "So What?" Question

**Status:** `[thinking]`

---

## The idea (as captured)

Bias is incomplete if it just exists as identification. The harm usually comes
from the subsequent conclusions drawn. Being Asian in itself is benign; being
associated with *physically inept* or *bad at driving*, without any conclusive
evidence in either subject, is the harm.

The "so what?" question weighs more heavily and meaningfully than the process of
identification itself. What leads to the identification could be conclusive
evidence when taken in aggregate — genetic material, complexion, medical
history, birth certificate, and so on. Extrapolation on existing data based on
historical tendency/narratives brings the harm in most cases, so evaluating the
follow-up to identification is important.

---

## Claim, in one sentence

Harm is located in the inferential step, not the representational one: the
question is not whether a system identifies a group, but what it concludes from
that identification and on what evidential basis.

## Why it might matter

It supplies the **locus of intervention** that the definitional idea leaves
open. If harm lives in the inference rather than the representation, then
mitigation should audit conclusions rather than strip attributes — which is
exactly the targeted alternative to indiscriminate mitigation. Identification is
cheap to keep and often load-bearing; extrapolation is where the cost lands.

It also reframes what a fairness audit *examines*. Not "does the model know
race?" but "what does the model do with knowing it, and is that warranted?"

## Relationship to [`definition-of-bias.md`](definition-of-bias.md)

These look like two halves of one argument:

| | Idea 1 | Idea 2 |
|---|---|---|
| Asks | Is bias harmful *as such*? | Where does harm actually enter? |
| Answers | No — neutral until shown otherwise | At the inference, not the identification |
| Implies | Do not strip indiscriminately | Audit the conclusions instead |

Idea 1 argues against a mitigation strategy; idea 2 says what to do instead.
Worth deciding whether they are two sections or one — the pair is more
persuasive than either alone, and idea 1's "performance cost for nothing"
complaint is much stronger once there is a named alternative.

## Supporting ground worth developing

- **The identification/inference split may have formal machinery already.**
  "Extrapolation based on historical tendency" versus "conclusive evidence"
  sits very close to the distinction between spurious and causal association.
  The causal fairness literature (counterfactual fairness, path-specific
  effects) is built on exactly this move: permit some pathways from a protected
  attribute, forbid others. If that mapping holds, the idea inherits an existing
  formalism instead of needing one built. Leads logged in the screening log —
  unverified.
- **The permitted-pathway framing fits the examples.** Sex → menstrual health is
  a pathway one would license; ethnicity → driving ability is not. That is a
  boundary criterion which is *not* "is it biological", which is the criterion
  that failed for eGFR.

## Possible format

Undecided.

- **Prose**, paired with or following the definition section.
- **A pipeline figure**: attribute → identification → inference → decision, with
  the mitigation point marked at the inference step rather than the input. This
  would carry the central claim in one image, and would pair naturally with the
  2×2 proposed for idea 1.
- **A table of licensed vs unlicensed inferences** from the same attribute,
  which makes the criterion concrete without requiring the full formalism.

## Open questions

- What makes an extrapolation "conclusive" enough to license? Statistical
  significance, effect size, causal identification, mechanism?
- Does the criterion operate per-inference, or per-attribute-inference pair?
  ("Never conclude X from Y" is a much narrower rule than "never use Y".)
- Where does this apply — training objective, model internals, or the decision
  layer downstream of the model?

---

Stress-tests against this idea *in isolation*:
[`so-what-question-objections.md`](so-what-question-objections.md).
