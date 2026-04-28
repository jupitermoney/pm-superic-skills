---
description: CEO-mode adversarial review of a completed PRD — challenges premises, maps failure modes, stress-tests scope, and surfaces every gap before engineering or leadership review
argument-hint: "<PRD content or 'use the PRD we just wrote'>"
---

# /prd-ceo-review -- CEO-Mode PRD Review

Run a hostile but fair review on any PRD. Acts as a skeptical CPO or CEO asking the questions you will face in a review meeting — before you are in that meeting.

Adapted from [garrytan/gstack plan-ceo-review](https://github.com/garrytan/gstack/tree/main/plan-ceo-review).

## Invocation

```
/prd-ceo-review [paste your PRD or share the Confluence link]
/prd-ceo-review use the PRD we just wrote
/prd-ceo-review [upload a PRD file]
```

## Pick a mode first

| Mode | What the reviewer does | Use when |
|------|----------------------|----------|
| **SCOPE EXPANSION** | Assumes you are thinking too small. Finds the 10x version and pushes scope up. | Early discovery, runway exists, leadership keeps asking "why isn't this bigger?" |
| **SELECTIVE EXPANSION** | Holds current scope as baseline. Surfaces expansions as individual opt-in cherry-picks. | You like your core scope but want to know what you are leaving on the table |
| **HOLD SCOPE** | Scope is locked. Makes what is written bulletproof. No expanding, no cutting. | Close to kickoff, going to engineering soon |
| **SCOPE REDUCTION** | Finds the minimum viable version and cuts everything else to the backlog. Ruthless. | Timeline pressure, resource cuts, PRD is too big for the sprint |

## What gets reviewed

| Section | What it checks |
|---------|----------------|
| Problem & Opportunity | Is the problem real, sized, and falsifiable? |
| Success Metrics | Are metrics SMART, instrumented, and tied to behavior? |
| User Segments & Edge Cases | Are segments specific enough to make tradeoff decisions? |
| Solution Design & Failure Modes | What breaks, who sees it, what is the fallback? |
| Data Architecture & Shadow Paths | Does every data flow handle nil, empty, and error states? |
| Security & Compliance | PII, authorization, regulatory flags, fraud surface |
| Dependencies & Risks | External APIs, internal teams, data dependencies, timeline risks |
| Rollout & Experiment Design | Feature flags, A/B design, rollback criteria, comms plan |
| Observability & Ops | Dashboards, CS runbooks, monitoring plan |
| Long-Term Trajectory | Technical debt, reversibility, lock-in, 12-month ideal state |
| Design & UX | Empty/loading/error states, accessibility, information hierarchy |

## Key behaviors

- **One question per finding** — never batches multiple issues into one prompt
- **Every scope change requires your explicit approval** — nothing is silently added or removed
- **Named failure modes only** — every failure must name what triggers it, what the user sees, and what the fallback is
- **Produces a completion summary table** — every section gets a status and a NOT-in-scope log of everything deferred

## Output

At the end of the review you get:

1. **Completion summary table** — section-by-section ✅/⚠️/❌ with key findings
2. **Failure modes registry** — every named failure mode with trigger, user impact, fallback, and resolution status
3. **NOT-in-scope log** — everything explicitly deferred or rejected
4. **Recommended next steps** — what changes the PRD needs before going to engineering, what open questions need owners, what needs sign-off

## Workflow

### Step 1: Load the prd-ceo-review skill

Read and execute the full **prd-ceo-review** skill at `pm-execution/skills/prd-ceo-review/SKILL.md`. Follow every instruction from top to bottom.

The PRD content is either:
- Passed as the argument to this command
- From the current conversation context (if the user says "use the PRD we just wrote")
- From a Confluence link (fetch it directly)

Do not ask the user to paste the PRD again if it is already available in context.

### Step 2: Run Step 0 (intake and mode selection)

Follow the skill's Step 0 sequence:
- 0A: Premise challenge
- 0B: Existing leverage check
- 0C: Dream state mapping
- 0D: Implementation alternatives (mandatory — never skip)
- 0E: Jupiter-specific context check (regulatory, Amplitude, APIs, CS, A/B design)
- 0F: Mode selection ceremony — ask the user to pick one of the four modes

### Step 3: Run all 11 review sections

Follow the skill's instructions for each section. One finding, one question at a time. Never batch.

### Step 4: Deliver the post-review outputs

Completion summary table, failure modes registry, NOT-in-scope log, and recommended next steps.

### Step 5: Offer next steps

After the review, offer:
- "Want me to **update the PRD** based on the findings?"
- "Should I **break this into epics and user stories** with the review findings incorporated?"
- "Want me to **draft a stakeholder update** that summarises what changed and why?"
- "Should I **run a pre-mortem** on the highest-risk failure modes?"
