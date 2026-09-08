# Screening log

Every source we encounter, one row each. Verdicts are defined in `README.md`.
The `Why` column is the valuable part — an entry without a reason is not done.

| Citekey | Source | Verdict | Why / what it gives us |
|---|---|---|---|
| `knuth1984texbook` | Knuth 1984, *The TeXbook* | `[include]` | Example row — delete. |
| `lamport1994latex` | Lamport 1994, *LaTeX* | `[include]` | Example row — delete. |
|  |  | `[found]` |  |

## Leads from discussion (unverified)

Named from memory while discussing *Definition of Bias* — **none of these have
been checked**. Titles, authors and years may be wrong or conflated. Verify each
against the primary source before it moves past `[found]`, and never cite from
this table.

| Lead | Why we want it | Verdict |
|---|---|---|
| Barocas, Hardt & Narayanan, *Fairness and Machine Learning* (textbook) | Standard reference; should fix terminology across the four senses of "bias" | `[found]` |
| Corbett-Davies & Goel, "The Measure and Mismeasure of Fairness" | Argues against naive blindness — may be close to our thesis, or may pre-empt it | `[found]` |
| Kleinberg, Mullainathan & Raghavan — fairness impossibility result | Calibration vs error-rate balance cannot both hold; supports "which bias must be chosen" | `[found]` |
| Chouldechova — disparate impact / recidivism | The accurate-but-harmful case, objection 1 in the note | `[found]` |
| Dwork et al., "Fairness Through Awareness" | Origin of the awareness-over-blindness position | `[found]` |
| Wolpert — no free lunch | Formal grounding for "inductive bias is necessary" | `[found]` |
| eGFR race coefficient removal (clinical literature, ~2020-2021) | The hard boundary case; "biological" did not settle it | `[found]` |
| Kusner et al., "Counterfactual Fairness" | Formalises fairness via causal rather than correlational reasoning — candidate machinery for idea 2 | `[found]` |
| Nabi & Shpitser — path-specific effects for fairness | Permitting some pathways from a protected attribute and forbidding others; close to the licensed/unlicensed inference split | `[found]` |
| Pearl — causality / mediation analysis | Underlying formalism for the pathway framing | `[found]` |
| Statistical discrimination vs taste-based discrimination (economics; Arrow, Phelps) | Prior treatment of "inference from group membership"; predates the ML framing and may pre-empt parts of idea 2 | `[found]` |
| US Voting Rights Act §2 — text of the proportional-representation disclaimer | Idea 3 objection 1; may show the legal analogy cuts the other way. **Read the statute itself, not commentary** | `[check]` |
| SFFA v. Harvard (2023); Regents v. Bakke (1978); Grutter v. Bollinger (2003) | US jurisprudence on quotas vs individualised consideration | `[check]` |
| Canadian Charter s.15(1) and s.15(2); Andrews; Kapp | Ameliorative programs may be permitted where US law forbids them — the jurisdictional split | `[check]` |
| Felony disenfranchisement and disparate impact | Idea 3 objection 4; the contested example | `[found]` |
| Demographic / statistical parity — original formulation | Idea 3 has a direct formal counterpart; establish whether the contribution is the criterion or its justification | `[found]` |
| Keyes, "The Misgendering Machines" (~2018) | The critical literature on automatic gender recognition; idea 4 objection 3. Read before the example is kept | `[found]` |
| Reiter — default logic; McCarthy — circumscription | Non-monotonic reasoning: conclusions held by default, withdrawn on defeaters. Formal home for idea 4 | `[found]` |
| Legal standards of proof — BARD / clear and convincing / preponderance | Idea 4 objection 2; the standard invoked must match the threshold set, and its error asymmetry stated | `[check]` |
| Absolute vs relative risk reduction; number needed to treat (epidemiology / clinical trials) | Mature treatment of idea 5's core measurement point; likely supplies the reporting convention wholesale | `[found]` |
| EEOC four-fifths rule; disparate impact ratio vs statistical parity difference | The ratio/difference metric split in fairness; idea 5's formal counterpart | `[check]` |
| Selbst et al., "Fairness and Abstraction in Sociotechnical Systems" (~2019) | The ripple-effect and portability traps; directly relevant to predicted social impact | `[found]` |
| Metcalf et al. — algorithmic impact assessment; Ada Lovelace Institute AIA work | Institutional design of impact assessment, incl. the self-assessment conflict | `[found]` |
| Goodhart's law / Strathern formulation | Idea 5 objection 4; predicted-impact scores as targets | `[found]` |

## Searches run

Record these so the review is reproducible and so we do not repeat work.

| Date | Where | Query | Hits | Kept |
|---|---|---|---|---|
| 2026-09-08 | — | — | — | — |
