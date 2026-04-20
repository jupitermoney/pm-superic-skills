# Changelog

All notable changes to pm-superic-skills are documented here.
Most recent changes appear first.

---

## April 2026

### Jupiter context skill (pm-execution)
- Added `pm-execution/skills/jupiter-context/SKILL.md` — Jupiter org structure, Jira board routing, engineering contacts, OKR conventions, and PRD review calibrations embedded directly in the pm-execution plugin. Loads automatically for any Jupiter PM work. Updates with every plugin reload.

### Shared Jupiter context directory
- Added `jupiter-context/` at repo root — team-board-map, OKR format conventions, and PM onboarding guide.
- Added engineering structure (frontend and backend engineers + managers per pod).

### Learnings files added to skills
- `pm-execution/skills/review-prd/learnings.md` — 13 Jupiter-specific PRD coaching calibrations.
- `pm-execution/skills/prd-to-epics/learnings.md` — placeholder for future contributions.
- `pm-project-management/skills/expert-pm-tracker/learnings.md` — placeholder.
- `pm-product-discovery/skills/voc-analysis/learnings.md` — placeholder.

### Access control
- Added `.github/CODEOWNERS` — all SKILL.md and command files require Abhishek's approval. Learnings and context files are open contributions via PR.

### Automation
- Added `.github/workflows/notify-on-merge.yml` — Slack notification on every merge to main, with what changed and how to update.

### Setup
- Added `setup.sh` — one command to install all plugins and confirm Jupiter context is active.

---

## March 2026

### pm-execution
- `review-prd` — Dimension 4 scoring improvements based on session learnings.
- `create-prd` and `prd-to-epics` — improvements based on session learnings.

### pm-project-management
- `expert-pm-tracker` — Jupiter standards promoted from personal configs into the skill.

### pm-market-research
- `find-research` — new skill for Jupiter research library lookup.

---

## How to read this

Each entry describes what changed and what it affects. If you see a skill name, that skill's behaviour has changed — update your plugin to get it.

**To update:** run `bash setup.sh` or re-run `claude plugin install <plugin>@pm-superic-skills` for the affected plugin.
