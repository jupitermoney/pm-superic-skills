# review-prd — Learnings

Jupiter-specific calibrations for the `review-prd` skill. Loaded alongside the skill's SKILL.md when `/pm-execution:review-prd` runs.

Add new entries here when a coaching session produces a calibration that would apply to any Jupiter PM — not just one session or one PM.

To propose a change, open a PR. Changes to SKILL.md require Abhishek's approval. Changes here are open contributions.

---

## Don't flag missing citations or data sources

PMs quote baseline numbers without citation. Remove citation gaps from the review checklist entirely.

**Why:** Called out explicitly as noise, not signal. Stakeholders ask if they want the source.

**How to apply:** Skip any comment about unsourced stats or missing methodology references.

---

## Don't penalise missing baselines on 0-to-1 builds

When a feature doesn't exist yet, there are no baselines. Flag baseline absence only when the feature improves an existing flow where data already exists.

**Why:** Baseline gaps on net-new flows are expected and unfixable until the feature ships.

**How to apply:** Before flagging missing baselines, check whether the flow exists today. If not, skip.

---

## Don't flag missing measurement method

PMs choose where they track. Absence of Amplitude event names or system-of-record details is not a PRD gap.

**Why:** Implementation detail, not a product decision.

**How to apply:** Remove measurement method from the review checklist entirely.

---

## Multiple scenarios not required at Jupiter

One impact scenario is acceptable. Don't flag absence of conservative/optimistic models as a gap.

**Why:** Not a Jupiter norm and adds friction without improving decision quality.

**How to apply:** Skip scenario coverage in Expected Impact scoring.

---

## Disbursal API failure and idempotency — not a gap at Jupiter

Infrastructure handles these. Don't surface them as missing edge cases in lending PRDs.

**Why:** Platform-level concern, not PM-specced.

**How to apply:** Remove from edge case checklist for lending domain reviews.

---

## Jupiter-specific Why Now lens for lending PRDs

Always check if Why Now connects to: AoP lending growth target, NTJ/ETJ split (NTJ ~30% of book), low NTJ ToF, and lending-led profitability goal. Generic competitive or market reasons without this context are insufficient.

**Why:** Jupiter's strategic context is specific. A Why Now that doesn't connect to the lending book target misses the internal urgency argument.

**How to apply:** In Why Now scoring, deduct if the section doesn't reference NTJ growth imperative or lending profitability goal when reviewing a lending PRD.

---

## NACH/SI for non-SA users is a recurring Jupiter lending gap

Web-acquired users won't have a Jupiter SA, so Standing Instruction won't be possible. Non-SI flows have a history of complaints at Jupiter.

**Why:** Historically high complaint volume on non-SI NACH flows.

**How to apply:** Always flag as P0 in lending PRDs when NACH or mandate setup is in scope. Recovery paths for each non-SI failure state must be defined and live on day 1.

---

## Coaching output style

Tight bullets, Slack-shareable, 6–7 points max per section cluster. Combine related points. No prose summaries.

**Why:** Verbosity dilutes coaching signal. PMs need something they can act on in 2 minutes, not read in 10.

**How to apply:** Default coaching output to bullet format. Max 11 words per bullet. No paragraph explanations unless the PM asks.

---

## Positives should be short and personal, not explained

Don't justify why something is good. Just say it. Add a direct signal like "This is very good" or "very well thought through" where warranted.

**Why:** Over-explaining a positive dilutes it.

**How to apply:** Cut any sentence in the positives section that starts with "This means" or "This prevents." If the point needs explaining, it is not a positive — it is a coaching note.

---

## Use "I felt" for criticism, not declarative verdicts

"I felt it lacked concrete evidence" not "This section needs a concrete comparison." Personal voice, not judgment.

**Why:** Coaching lands better when it reads as an observation, not a ruling.

**How to apply:** In the improve section, prefix subjective gaps with "I felt" or "I think" rather than stating them as facts.

---

## Challenge whether the impact justifies the effort

When reviewing Expected Impact, check whether the impact number is meaningful at Jupiter's current scale. 3 Cr on a 75 Cr/month base is less than 4% — that question needs to be surfaced.

**Why:** The effort-to-impact ratio is a higher-order gap than methodology. Missing it leaves the PM thinking the number is fine when the investment may not be justified.

**How to apply:** After stating the impact number, add one line: does this move the needle at Jupiter's current scale? Flag if it doesn't.

---

## Suggest solutions with "maybe," don't prescribe them

"Maybe a simple event-driven WhatsApp flow..." not "An event-driven WhatsApp flow needs to be scoped."

**Why:** The PM's role is to think through the problem. Prescribing a solution removes that thinking. A suggestion opens the door; a prescription closes it.

**How to apply:** Any solution idea in coaching output should be prefixed with "maybe" or "one option could be." Never state a solution as a requirement.

---

## Always close coaching output with an action and a date

End with what happens next and when. "Review these and let's close them tomorrow."

**Why:** Coaching without a next step is just feedback. A date creates accountability.

**How to apply:** Last line of every coaching output should be a proposed next action with a time horizon.
