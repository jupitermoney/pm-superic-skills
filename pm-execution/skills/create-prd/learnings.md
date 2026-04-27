# create-prd — Learnings

Jupiter-specific calibrations for the `create-prd` skill. Loaded alongside the skill's SKILL.md when `/pm-execution:create-prd` runs.

Add new entries here when a session produces a calibration that applies to any Jupiter PM.

To propose a change, open a PR. Changes to SKILL.md require Abhishek's approval. Changes here are open contributions.

---

<!-- Add learnings below using this format:

## Short title

One paragraph describing the rule or decision.

**Why:** Root cause or reason it matters.
**How to apply:** When this triggers and what to do.

-->

## Stakeholder Q&A and Open Questions are post-walkthrough sections — do not create them at PRD draft time

Do not include a Stakeholder Q&A section or populate an Open Questions table when writing the initial PRD. Both sections exist to capture output from the walkthrough session — questions raised, answers given, and items that remain unresolved. They have no meaningful content until the walkthrough has happened.

**Why:** A first-draft PRD has not yet been reviewed by anyone. Stakeholder Q&A would be empty or invented, and an Open Questions table at draft time tends to get filled with questions the PM should answer before publishing, not questions from reviewers. Pre-populating these sections creates noise and implies a walkthrough happened when it hasn't.

**How to apply:** When drafting a PRD, omit both sections entirely. After the walkthrough session, add them: Stakeholder Q&A as a new numbered section (Q&A pairs, one per question raised, with the reasoning in the answer), and Open Questions as a table (question, owner, status) for anything that came up but was not resolved in the room. Resolved questions go into Stakeholder Q&A; unresolved ones go into Open Questions.

## Add an external partner / ops flow section for integration-heavy PRDs

When a feature involves external partners — RTAs, KRAs, AMCs, payment gateways, compliance bodies, or any third-party system — include a dedicated section that names each partner, explains their role, and walks through the end-to-end ops flow step by step. Each step should include normal-path behaviour and the exception/fallback handling.

**Why:** Tech and ops teams need to understand the external system landscape before they can estimate, build, or operate the feature. Without this context, they either ask the same questions repeatedly or make incorrect assumptions about who owns what part of the flow.

**How to apply:** If the PRD involves any external system that Jupiter does not control, add a section titled "How External Partners Operate" (or similar). Include a partner table (partner name, type, role) and a numbered step-by-step flow from user action to ops cycle complete. For each step, note the exception case and the fallback procedure. If a diagram exists, embed it above the text description.
