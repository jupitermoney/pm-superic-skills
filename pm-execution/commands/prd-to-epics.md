---
description: Convert a PRD into Jira-ready Epics — each gets 1 Product Task + 1 Design Task + 1 Tech Task created automatically, with DoD explained. Additional tasks are suggested but require user confirmation. Follows Jupiter Jira process loaded from config.
argument-hint: "<prd-text | confluence-url | file-path> [figma-url]"
---

# /prd-to-epics — PRD to Epic and Task Backlog

Convert any PRD into a sprint-ready hierarchy of **Epics with 3 core tasks each**. Follows the Jupiter Jira process (loaded from `~/.claude/configs/pm/jira-process.md`).

## Invocation

```
/pm-execution:prd-to-epics                                           # prompts for PRD source
/pm-execution:prd-to-epics [paste PRD text here]                     # inline PRD content
/pm-execution:prd-to-epics /path/to/PRD-checkout.md                 # local file
/pm-execution:prd-to-epics https://your-org.atlassian.net/wiki/...  # Confluence page
/pm-execution:prd-to-epics [PRD] https://figma.com/design/...       # PRD + Figma design
```

## Steps

### Step 0 — Gather inputs

- Text pasted → use directly
- File path → read the file
- Confluence URL → fetch via Atlassian MCP (`getConfluencePage`)
- Figma URL (optional) → call `get_design_context` to enrich task descriptions with screen names
- If any source is unavailable → prompt the user before continuing

### Step 1 — Parse the PRD

Extract: problem statement, success metrics, features (P0/P1/P2), user segments, phases, out-of-scope items, open questions.

### Step 2 — Identify Epics (3–7)

Group features by user journey, feature area, or release phase. Name each Epic as a **user or business outcome**, not a feature label.

Present the proposed epic list and confirm with the user before creating anything in Jira.

### Step 3 — Create 3 tasks per Epic (no extra confirmation needed)

For each confirmed epic, create immediately in Jira:

1. `PRD - [Epic name]` — `Product Task` type
2. `Design - [Epic name]` — `Product Task` type
3. `Tech - [Epic name]` — `Tech Task` type

Use the `parent` field to link each task to its epic. See `jira-process.md` for full field conventions.

After creating, output a table of all created ticket keys and links, then share the **Definition of Done** for each task type exactly as defined in `jira-process.md`.

### Step 4 — Suggest additional tasks (ask, never auto-create)

After the 3 core tasks are live, present the optional tasks from `jira-process.md` (QA, Tech Design, Ops, Comms) and ask which the user wants created. Wait for explicit confirmation. Create only what is confirmed.

### Step 5 — Output summary

```
# [Feature Name] — Epic and Task Summary

| Epic | PRD Task | Design Task | Tech Task | Additional |
|------|----------|-------------|-----------|------------|
| [KEY] Name | [KEY] | [KEY] | [KEY] | — |

Out of Scope
Open Questions
PRD Gaps Detected
```

## Example

```
/pm-execution:prd-to-epics https://acme.atlassian.net/wiki/spaces/PROD/pages/12345
```

→ Fetches PRD, proposes epics, creates 3 tasks per epic, shares DoD, then asks about optional tasks.
