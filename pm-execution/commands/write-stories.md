---
description: Break a feature or PRD into sprint-ready backlog items using the hybrid Job Story + WWA format with INVEST validation and acceptance criteria
argument-hint: "<feature description, PRD, or Confluence link>"
---

# /write-stories -- Backlog Item Generator

Break any feature description, partial PRD, or full PRD into sprint-ready Epics and Stories. Uses the hybrid Job Story + WWA format — situational context from JTBD combined with strategic Why from WWA — validated against INVEST criteria.

## Invocation

```
/write-stories Allow users to export reports as PDF and CSV
/write-stories Notification system for task deadlines — we need stories for sprint planning
/write-stories [paste a PRD or feature spec]
/write-stories [Confluence page URL]
```

## Workflow

### Step 1: Apply the prd-to-epics skill

Run the full **prd-to-epics** skill. It works for any level of input — from a one-line feature description to a full PRD.

If the user provides a full PRD (or Confluence link): use it directly.

If the user provides a feature description or informal brief, frame it as a lightweight PRD before proceeding:
- Extract: what problem does this solve, who is it for, what does success look like, what are the constraints
- Ask only for genuinely missing information — never more than 3 questions at once
- Proceed with reasonable assumptions for anything still unclear, flagging them explicitly

### Step 2: Check for Figma

Ask once:
> "Do you have a Figma file for this feature? If yes, share the URL and I'll use screen names and component states in the acceptance criteria. If not, I'll write ACs that are implementable without it."

### Step 3: Generate Epics and Stories

Each story uses the hybrid format:

```
### Story [N]: [Deliverable outcome in 5-8 words]

**Why (Strategic Context):**
[1-2 sentences connecting this story to the epic goal. What breaks if we skip it?]

**Job Story:**
When [specific situation that triggers the need],
I want to [motivation — what the user wants to do],
so I can [outcome — the value they gain].

**Design:** [Figma link / screen name, or "TBD"]

**Acceptance Criteria:**
- [ ] [Observable, testable condition]
- [ ] [Observable, testable condition]
- [ ] [Edge case or error state]
- [ ] [Performance or integration requirement if relevant]

**Priority:** [P0/P1/P2] | **Effort:** [S/M/L] | **Dependencies:** [Story IDs or None]
```

### Step 4: Validate Against INVEST Before Delivering

Check every story before output:

| Criterion | Check |
|---|---|
| Independent | Can it ship without another story being done first? |
| Negotiable | Does it leave room for the team to decide how? |
| Valuable | Does it deliver user value on its own? |
| Estimable | Can the team size it with reasonable confidence? |
| Small | Can it be completed in one sprint? |
| Testable | Can QA verify every AC without interpretation? |

Split any story that fails Independent or Small. Rewrite ACs that fail Testable.

### Step 5: Output

```
## Backlog: [Feature Name]

**Generated:** [today]
**Total Epics:** [N] | **Total Stories:** [N]

---

[Epic and story blocks]

---

## Out of Scope
[Explicitly excluded items with reason]

## Open Questions
[Unresolved items that block estimation or implementation]
```

### Step 6: Offer Next Steps

- "Want me to **create these in Jira** directly? (requires Atlassian MCP)"
- "Should I **generate test scenarios** for any of these stories?"
- "Want me to **run a pre-mortem** on this backlog?"
- "Should I **estimate sprint capacity** against these stories?"

## Notes

- Stories are conversation starters, not specifications — write enough to align intent, let the team discover the implementation together
- One story = one deployable unit of value; if it needs another story to be useful, merge them or split differently
- Error handling and edge cases deserve their own stories, not bullets within a happy-path story
- If the feature produces 15+ stories, group into epics and suggest phasing
