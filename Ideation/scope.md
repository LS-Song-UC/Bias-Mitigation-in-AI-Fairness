# Scope: this is engineering, not ethics

**Status:** `[thinking]` — framing constraint, applies to every other note here.

---

## As stated by the author

The research is not on bias itself. It is **bias mitigation in AI fairness**.
The work does not argue what is fair — it engineers and implements the concept
as *treatment* applied to standing LLMs and AI systems.

## What this settles

**The novelty question.** Ideas 1–5 have formal counterparts already in the
literature — demographic parity for idea 3, Bayesian and defeasible reasoning
for idea 4, absolute-vs-relative effect for idea 5. Under a normative framing
those look like competitors, and the paper would owe an argument for why its
definition is better.

Under an engineering framing they are **available machinery**, not rivals. The
contribution is the treatment pipeline and its implementation against deployed
systems; borrowing a well-established criterion is a strength, because it means
the engineering rests on something already defended. Prior work stops being a
threat and becomes a dependency.

**Which objections matter.** Anything that asks *is this the right conception of
fairness* is out of scope — it is an input the framework consumes, not an output
it produces. Anything that asks *can this be built, measured, and shown to work*
is squarely in scope, and several such objections should be promoted from
side-notes to central problems.

## What this raises instead

"Standing LLMs and AI systems" is a strong constraint, and probably a productive
one: it implies **treatment without retraining**. That narrows the intervention
surface hard, and the narrowing is likely part of the contribution.

Candidate attachment points, cheapest and most reversible first:

| Where treatment attaches | Retraining? | Reversible? |
|---|---|---|
| Output filtering / post-processing | No | Fully |
| Inference-time steering, system prompts, in-context correction | No | Fully |
| Activation / representation editing | No | Mostly |
| Lightweight adaptation (LoRA, adapters) | Partial | Mostly |
| Fine-tuning (SFT, RLHF, DPO) | Yes | No |
| Pre-training data intervention | Yes | No |

The first three are the ones compatible with "standing" systems. Deciding which
the research targets is now a more pressing question than any definitional one,
because it determines what can be built and measured at all.

## The mapping worth working out

Each idea needs an implementable counterpart. This is where the engineering
contribution actually lives:

| Idea | Engineering form |
|---|---|
| 1. Bias neutral until harmful | A detector that flags harmful attribution *without* stripping benign group-conditional signal — and a measurement showing the signal survives |
| 2. Harm at the inference | Intervention attaches at the attribution step, not the representation. Testable: does the model still identify the group while declining the unlicensed inference? |
| 3. Deviation is diagnostic | A monitoring metric that triggers investigation rather than automatic correction |
| 4. Licensed prior + duty to update | **In-context correction.** Directly testable on an LLM: does it revise an attribution when corrected, and does the revision persist across turns? |
| 5. Baseline-relative treatment | Evaluation protocol: ratio and difference metrics reported together, with intervals |

Idea 4 stands out as the cleanest experiment — a concrete, runnable measurement
on existing models that needs no retraining and produces a number.

## Open questions

- Which attachment point, and is the choice a finding or an assumption?
- Which models, and does the treatment transfer across them?
- What is the benchmark? Existing bias benchmarks face serious construct-validity
  criticism, so adopting one uncritically imports its problems. Leads logged.
- What is the performance tax, measured how? Idea 1's central empirical claim —
  that indiscriminate mitigation costs capability for nothing — is only as good
  as the capability benchmark used to show it.
