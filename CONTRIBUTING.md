# Contributing

PM Skills Marketplace is maintained by [Abhishek Choudhari](https://www.linkedin.com/in/abhishekchoudhari/). Contributions are welcome — whether it's a bug fix, a typo, or a new skill idea.

---

## Jupiter PMs — How to contribute learnings

Every skill session is an opportunity to make the skills sharper for everyone. When something works well, or when a skill needed correcting, that's a learning worth capturing.

### What you can contribute

| File type | Can you edit? |
|---|---|
| `**/learnings.md` | Yes — this is your contribution surface |
| `**/SKILL.md` | No — Abhishek curates all skill logic |
| `**/commands/*.md` | No — Abhishek curates all command logic |
| `jupiter-context/**` | Yes — team structure, OKR context updates |

### How it works

You do not need to run any git commands yourself. At the end of a skill session, Claude will:

1. Propose what it learned and where it belongs
2. Ask you to confirm before writing anything
3. Write the learning to the correct `learnings.md` file
4. Create a branch, commit, push, and raise a PR automatically
5. Share the PR link with you

You review the PR link, Abhishek reviews and merges it. Done.

### If you want to add a learning manually

Branch naming: `learning/<skill-name>/<short-description>`

```bash
git checkout -b learning/review-prd/lending-why-now
# edit the learnings file
git add pm-execution/skills/review-prd/learnings.md
git commit -m "Add learning: lending Why Now must reference NTJ growth target"
git push origin learning/review-prd/lending-why-now
gh pr create --title "Learning: lending Why Now" --body "Details in the diff."
```

### Learning format

Every entry in a `learnings.md` file follows this structure:

```markdown
## Short title

One paragraph describing the rule or decision.

**Why:** Root cause or reason it matters.
**How to apply:** When this triggers and what to do.
```

### What Abhishek reviews

Before merging, he checks:
- Does this apply to all Jupiter PMs, or just one session?
- Is it specific enough to be actionable?
- Does it conflict with anything already in the SKILL.md?

Most learnings merge quickly. If he pushes back, he will comment on the PR.

### After a learning merges

A Slack notification goes out automatically. Run `git pull && bash setup.sh` to pull the update.

---

## General contributors (non-Jupiter)

- **Bugs and small fixes** — open a PR directly.
- **New skills, commands, or larger changes** — open an issue first so we can discuss the approach.

### Guidelines

- Keep PRs focused — one change per PR.
- Follow existing patterns: skills are nouns (domain knowledge), commands are verbs (workflows).
- Every skill needs frontmatter with `name` and `description`. Every command needs `description` and `argument-hint`.
- Skill `name` must match its directory name.
- No cross-plugin references in commands. Suggest follow-ups in natural language only.
- Every contributor will be listed publicly.
- Run the validator before submitting: `python3 validate_plugins.py`

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
