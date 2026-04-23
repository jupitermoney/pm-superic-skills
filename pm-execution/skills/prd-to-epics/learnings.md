# prd-to-epics — Learnings

Jupiter-specific calibrations for the `prd-to-epics` skill. Loaded alongside the skill's SKILL.md when `/pm-execution:prd-to-epics` runs.

All learnings from prior sessions have been promoted into SKILL.md. Add new entries here when a session produces a calibration that applies to any Jupiter PM.

To propose a change, open a PR. Changes to SKILL.md require Abhishek's approval. Changes here are open contributions.

---

<!-- Add learnings below using this format:

## Short title

One paragraph describing the rule or decision.

**Why:** Root cause or reason it matters.
**How to apply:** When this triggers and what to do.

-->

## Always create 3 child tickets per epic — Product Task, Design Task, Tech Task

Every epic produced by prd-to-epics must have exactly three child tickets created inside it: a Product Task (PRD), a Design Task, and a Tech Task. Do not create more or fewer. Do not assign any of them to anyone — leave the assignee field blank.

**Why:** This is Jupiter's standard ticket structure for the INV project. Assigning tickets at creation time is premature — owners are set when work is actually picked up.

**How to apply:** After creating the epic in Jira, immediately create all three child tickets using `parent: {key: "<epic-key>"}`. Product Task title format: `PRD — <epic name>`. Design Task: `Design — <epic name>`. Tech Task: `<epic name>` (no prefix). No assignee on any of them.

## Use ADF format for all Jira descriptions — never plain text with \n

All Jira ticket descriptions must be created using Atlassian Document Format (ADF) with `contentFormat: "adf"`. Never pass descriptions as plain markdown strings with `\n` line breaks — these get stored as literal escape sequences and render as unformatted text in Jira.

**Why:** Jira's API stores plain strings verbatim. A `\n` in a string becomes a literal backslash-n in the UI, not a line break. ADF nodes (paragraphs, bulletList, orderedList, rule, strong marks) render correctly every time.

**How to apply:** Pass `contentFormat: "adf"` and structure the description as an ADF `doc` object via `additional_fields.description` on create, or `fields.description` on edit. Use `paragraph`, `bulletList`, `orderedList`, `rule`, and `marks: [{type: "strong"}]` nodes. Never use raw string descriptions for anything beyond a single plain sentence.
