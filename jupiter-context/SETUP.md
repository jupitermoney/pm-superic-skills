# Jupiter PM Setup Guide

How to configure Claude Code with Jupiter context so every skill knows your team, your boards, and your planning conventions without you explaining it each time.

---

## How it works

Jupiter context is embedded directly in the `pm-execution` plugin as a skill (`jupiter-context`). This means:

- **No file path configuration needed.** The context loads automatically when you do any Jupiter PM work.
- **Updates automatically.** When the plugin is updated (via Cowork or CLI), the latest org structure, Jira boards, OKR conventions, and calibrations all come with it.
- **Works out of the box** for both Cowork and Claude Code CLI users.

---

## Step 1: Install (recommended — one command)

```bash
bash setup.sh
```

This installs all plugins at once. Run from the repo root. If you don't have the repo cloned, do it the manual way below.

**Or install manually with Claude Cowork:**
1. Open Customize (bottom-left)
2. Go to Browse plugins > Personal > +
3. Select Add marketplace from GitHub
4. Enter: `abhishekchoudhari/pm-superic-skills`

**Or install manually with Claude Code CLI:**
```bash
claude plugin install pm-execution@pm-superic-skills
claude plugin install pm-product-discovery@pm-superic-skills
claude plugin install pm-project-management@pm-superic-skills
# install other plugins as needed
```

That is all. Jupiter context is now active.

---

## Step 2: Add personal config (optional)

Create `~/.claude/configs/writing/voice-dna.md` with your personal writing style. This stays on your machine — it is never committed to the repo.

Ask Abhishek for the voice-dna template if you want tone-matched output in PRDs, stakeholder updates, and coaching.

---

## How to contribute

Anyone on the Jupiter PM team can improve this shared context. The flow:

### Contributing a learning

1. Fork or branch the repo
2. Find the skill you want to improve — e.g. `pm-execution/skills/review-prd/learnings.md`
3. Add your learning using this format:

```
## Short title

One paragraph describing the rule or decision.

**Why:** Root cause or reason it matters.
**How to apply:** When this triggers and what to do.
```

4. Open a pull request
5. Abhishek reviews and merges

### What goes where

| Type of learning | Where it goes |
|---|---|
| Improves the skill for all PMs (universal) | Propose editing the `SKILL.md` directly — flag in your PR that you think it should go into the skill |
| Jupiter-specific process (applies to all Jupiter PMs) | `pm-execution/skills/<skill>/learnings.md` |
| Personal preference or one-off session calibration | Keep it in your own `~/.claude/configs/` — do not add to the repo |

### What requires Abhishek's review

All PRs require his review. But specifically:
- Changes to any `SKILL.md` file — he is the sole curator of skill logic
- Changes to any command `.md` file
- Changes to `jupiter-context/team-board-map.md` that update org structure or board ownership

Learnings files and context updates are lower friction — flag if urgent and he will prioritise.

---

## Keeping context current

**When a new OKR cycle starts:**
Raise a PR updating `jupiter-context/team-board-map.md` with the new OKR context blocks. Keep the previous cycle's blocks — they are useful historical context for skills.

**When your team structure changes:**
Raise a PR updating the Engineering Structure table and the relevant team's Key contacts section.

**When you discover a new Jira board or Confluence space:**
Add it in a PR under the relevant team section.

---

## Getting updates

Every time a PR is merged to `main`, a Slack notification goes out automatically with what changed and how to update. Make sure you are in the channel where these are posted (ask Abhishek which channel).

### How to update after a notification

**Claude Cowork:**
1. Open Customize (bottom-left)
2. Go to Browse plugins > Installed
3. Find `pm-superic-skills` and click Update

**Claude Code CLI:**
Re-run the install command for any plugin that was updated. This pulls the latest version from GitHub:
```bash
claude plugin install pm-execution@pm-superic-skills
```

If you are unsure which plugin changed, the Slack notification will list the files that changed — match them to the plugin directory name (e.g. `pm-execution/`, `jupiter-context/`).

### Keeping your local clone current

If you cloned the repo locally (needed for `jupiter-context/` bindings in CLAUDE.md), pull the latest after any update:
```bash
cd /path/to/your/clone/pm-superic-skills
git pull origin main
```

Your CLAUDE.md bindings reference the local files, so a `git pull` is all that's needed — no reinstall required for Jupiter context files.

---

## Questions

Slack Abhishek directly or raise a GitHub issue on the repo.
