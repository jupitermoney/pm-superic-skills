# prd-ceo-review

A Claude skill that runs a CEO-mode adversarial review on any Product Requirements Document. It challenges premises, maps failure modes, stress-tests scope decisions, and surfaces every gap before the PRD reaches engineering or leadership.

Adapted from [garrytan/gstack plan-ceo-review](https://github.com/garrytan/gstack/tree/main/plan-ceo-review) — rewritten for PM workflows without the gstack binary dependencies.

---

## What it does

After you finish writing a PRD, this skill acts as a hostile but fair reviewer. It does not rubber-stamp your thinking. It asks the questions a skeptical CPO or CEO would ask in a review meeting — before you're in that meeting.

The review runs across 11 sections:

| # | Section | What it checks |
|---|---------|----------------|
| 1 | Problem & Opportunity | Is the problem real, sized, and falsifiable? |
| 2 | Success Metrics | Are metrics SMART, instrumented, and tied to behavior? |
| 3 | User Segments & Edge Cases | Are segments specific enough to make tradeoff decisions? |
| 4 | Solution Design & Failure Modes | What breaks, who sees it, what's the fallback? |
| 5 | Data Architecture & Shadow Paths | Does every data flow handle nil, empty, and error states? |
| 6 | Security & Compliance | PII, authorization, regulatory flags, fraud surface |
| 7 | Dependencies & Risks | External APIs, internal teams, data dependencies, timeline risks |
| 8 | Rollout & Experiment Design | Feature flags, A/B design, rollback criteria, comms plan |
| 9 | Observability & Ops | Dashboards, CS runbooks, monitoring plan |
| 10 | Long-Term Trajectory | Technical debt, reversibility, lock-in, 12-month ideal state |
| 11 | Design & UX | Empty/loading/error states, accessibility, information hierarchy |

---

## Four review modes

Pick a mode at the start. The reviewer commits to it and does not drift.

| Mode | Posture | Use when |
|------|---------|----------|
| **SCOPE EXPANSION** | Assumes you're thinking too small. Finds the 10x version and pushes scope up. | Early discovery, runway exists, leadership keeps asking "why isn't this bigger?" |
| **SELECTIVE EXPANSION** | Holds current scope as baseline. Surfaces expansions as individual opt-in cherry-picks. | You like your core scope but want to know what you're leaving on the table |
| **HOLD SCOPE** | Scope is locked. Makes what's written bulletproof. No expanding, no cutting. | Close to kickoff, going to engineering soon |
| **SCOPE REDUCTION** | Finds the minimum viable version and cuts everything else to the backlog. Ruthless. | Timeline pressure, resource cuts, PRD is too big for the sprint |

---

## Key behaviors

- **One question per finding** — never batches multiple issues into one prompt
- **Every scope change requires explicit approval** — nothing is silently added or removed
- **Named failure modes only** — "handle errors gracefully" is rejected; every failure mode must name what triggers it, what the user sees, and what the fallback is
- **Jupiter-specific checks** — flags RBI/regulatory touch points, Amplitude instrumentation gaps, banking API dependency risks, and CS runbook requirements
- **Produces a completion summary table** — at the end, every section gets a ✅/⚠️/❌ and a NOT-in-scope log of everything explicitly deferred

---

## Installation

Place the `SKILL.md` file in your Claude skills directory:

```
~/.claude/skills/prd-ceo-review/SKILL.md
```

To auto-trigger after every PRD, add this to your `CLAUDE.md`:

```markdown
### PRD CEO Review (always run after any PRD is written or updated)
Whenever you complete writing or significantly updating a PRD, automatically run the CEO review skill:
- Load `~/.claude/skills/prd-ceo-review/SKILL.md`
- Follow every instruction from top to bottom using the PRD content from the current session
- Do NOT ask the user to paste the PRD again — use what was just written
- The user may say "skip review" to bypass it; otherwise it is mandatory
```

To wire it into the end of a `create-prd` skill, add a final step that reads:

```
Load and execute ~/.claude/skills/prd-ceo-review/SKILL.md using the PRD content from this session.
```

---

## Output

At the end of every review you get:

1. **Completion summary table** — section-by-section status with key findings
2. **Failure modes registry** — every named failure mode with trigger, user impact, fallback, and resolution status
3. **NOT-in-scope log** — everything explicitly deferred or rejected, so it is visible and retrievable later
4. **Recommended next steps** — what needs to change before the PRD goes to engineering, what open questions need owners, what needs sign-off

---

## Credits

Core review framework and CEO cognitive patterns from [garrytan/gstack](https://github.com/garrytan/gstack/tree/main/plan-ceo-review) by Garry Tan.
