# Jupiter OKR Planning — Format & Conventions

Used by `plan-okrs` skill and any planning session at Jupiter. Defines how to name, structure, and output OKRs and initiative roadmaps.

---

## Company OKR Naming

Jupiter uses labelled OKR buckets. Any PM planning session should map team initiatives to one of these:

| Label | Theme |
|---|---|
| O1 | Revenue Growth |
| O2 | Unit Economics |
| O3 | Improve CX / Fix DSAT |
| O4 | AI-driven Automation |
| O5 | Aspirational user-facing AI |
| Compliance | Regulatory, RBI, legal obligations |

Company OKRs change every quarter. Always ingest the current company OKR document at the start of any planning session — never assume the labels above map to the same objectives as last quarter.

---

## Master Sheet Format

All initiative-level planning outputs use this 13-column structure:

| Column | Description |
|---|---|
| Company OKR | Label from the OKR key above (e.g. O1, O3, Compliance) |
| Pod/Area | Engineering pod or product area (e.g. Demand, Supply, Lending, PPI) |
| Product | Product name (e.g. Personal Loans, Magic Spends, Edge+) |
| Initiative | Initiative name — specific, outcome-oriented |
| Objective | One-line objective statement — qualitative, directional |
| Priority | P0 / P1 / P2 — blank if unknown, never assumed |
| Expected Go Live | Date or quarter — blank if unknown |
| Tech Effort | S / M / L / XL — blank if unknown |
| Apr Impact | Monthly impact (revenue, users, metric) — blank if unknown |
| May Impact | Monthly impact — blank if unknown |
| Jun Impact | Monthly impact — blank if unknown |
| Q Total | Sum or aggregate for the quarter |
| Dependencies | Other teams, partners, or external blockers |

**Rules that never break:**
- Leave blank what you do not know. Never fill or assume.
- Priority must be PM-confirmed, not inferred from initiative name.
- Monthly impact is mandatory where known. Where not, leave blank — do not roll up to Q Total from invented numbers.
- Company OKR must match one of the named labels. If genuinely ambiguous, leave blank and flag.

---

## Grouping Order

When presenting or populating a sheet:
1. Group by Company OKR first: O1 → O2 → O3 → O4 → O5 → Compliance
2. Within each OKR group, sort by Pod/Area, then by Product
3. Within each product, sort P0 first, then P1, then P2

---

## Tech Effort Scale

| Label | Scope |
|---|---|
| S | 1–2 weeks engineering |
| M | 2–4 weeks engineering |
| L | 1–2 months engineering |
| XL | 2+ months, likely multi-squad |

---

## OKR Quality Rules

Apply to every team OKR before finalising:

- Objective: qualitative, inspiring, no numbers in the statement itself
- Key Result: specific metric + current baseline + target + timeframe + owner
- Maximum 3 KRs per objective
- Maximum 2 objectives per team per quarter
- If the team is certain they will hit a KR, the target is not ambitious enough
- KRs must describe outcomes, not outputs ("Increase activation by 20%" not "Ship onboarding redesign")

---

## Clarifying Questions — Per Initiative

Before locking any initiative row in the master sheet, confirm with the PM:

1. Which company OKR does this ladder to? (show them the key)
2. What is the priority: P0, P1, or P2?
3. What is the expected go-live date?
4. What is the tech effort estimate?
5. What is the expected monthly impact in Apr, May, Jun?
6. Are there any cross-team or external dependencies?

If the PM does not know any of these, leave the field blank. Never fill it yourself.
