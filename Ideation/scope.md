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

## Intervention surface — decided

**Correction to an earlier inference here.** I had read "standing LLMs" as
implying treatment *without retraining*, and narrowed the surface accordingly.
That was too narrow: the author is investigating **intra-processing and
in-training methods**, so training-time intervention is in scope.

The field's standard taxonomy has four stages. Worth adopting the conventional
names for legibility, since reviewers will expect them:

| Stage | Acts on | In scope |
|---|---|---|
| **Pre-processing** | Training data, before learning | No |
| **In-processing** *(= "in-training")* | The objective / learning procedure | **Yes** |
| **Intra-processing** | An already-trained model, before or at deployment — fine-tuning, pruning, neuron editing, inference-time modification | **Yes** |
| **Post-processing** | Model outputs only | No |

*Terminology note:* "in-training" maps onto what the literature calls
**in-processing**. Using the established term costs nothing and buys immediate
recognition; "intra-processing" is itself a comparatively recent coinage with a
specific originating paper, so it is worth citing that source when the term is
introduced. Leads logged.

**Why this pairing is a good choice.** Intra-processing is precisely the
category built for standing systems — it assumes a trained model you did not
train and cannot re-train from scratch. Pairing it with in-processing gives a
natural contrast: the same treatment concept applied where you *do* control
training versus where you *do not*, which is a comparison the framework's
diagnosis/treatment split is well suited to make. That contrast may be more
publishable than either arm alone.

**What it opens up.** Objections that assumed no training access relax: some of
the diagnosis machinery can be built into the objective rather than bolted on
afterwards. It also raises a question the earlier framing did not: does the
same treatment produce the same effect at both stages, and if not, which
difference is informative?

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

- Does the same treatment behave equivalently in-processing and
  intra-processing? A divergence would itself be a result.
- For the intra-processing arm, which sub-method: fine-tuning, pruning, neuron
  or activation editing, or inference-time modification?
- Which models, and does the treatment transfer across them?
- What is the benchmark? Existing bias benchmarks face serious construct-validity
  criticism, so adopting one uncritically imports its problems. Leads logged.
- What is the performance tax, measured how? Idea 1's central empirical claim —
  that indiscriminate mitigation costs capability for nothing — is only as good
  as the capability benchmark used to show it.
