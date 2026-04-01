---
name: find-research
description: "Search Jupiter's user research library on Google Drive and surface relevant findings for a topic, question, or PRD. Scans both research folders, identifies relevant studies, reads their reports, and outputs findings either as a quick reference or as a formatted PRD evidence block. Use when writing a PRD, validating a problem statement, or checking what Jupiter already knows about a topic before starting new research."
tool_integration: Google Workspace
---

# Find Research — Jupiter Research Library

## Prerequisite

**Google Workspace MCP must be connected before this skill can run.**

Silently attempt to list files from the primary research folder. If the call fails or returns an auth error, stop immediately and tell the user:

> "This skill requires Google Workspace MCP to access Jupiter's research library. Connect the Google Workspace MCP integration and restart. Without it, the skill cannot run."

Do not proceed past this check if MCP is unavailable.

---

## Jupiter Research Library

Two research folders are searched on every run. Both are hardcoded — the PM never needs to find or share folder links.

| Library | Folder ID | Style |
|---|---|---|
| UX Research @Jupiter | `18j1txWhy5LAXhh3MMJpN79eho36e_jM8` | Structured — numbered subfolders, reports buried inside. Native Google Docs and Slides. Studies from 2025–2026. |
| Jupiter Research | `1J0ExN3pBHEpHJUM9Gb9z5xIXjpnZrOwT` | Flat — files sit directly in the study folder. Office format files (.docx insights docs, .pptx presentations). Studies from 2023–2025. |

If either folder returns a "File not found" or permission error, note which one is inaccessible and continue with the other. Do not fail the whole skill. Tell the user:

> "Note: [folder name] is not accessible with the current Google account. Results will only cover the accessible library. To fix this, ensure the folder is shared with abhishek.choudhari@jupiter.money."

---

## Phase 1 — Understand the Query

Accept `$ARGUMENTS` directly as the research topic or question.

If `$ARGUMENTS` is empty, ask one question:

> "What are you researching? A topic (e.g. 'SA Pro churn', 'onboarding drop-off', 'credit card benefits') or a specific question works. Also: is this for a PRD, or a quick reference lookup?"

The answer to the second part selects the output mode in Phase 4. Default to Quick Lookup if not specified.

---

## Phase 2 — Scan the Library (Metadata Only)

List the top-level contents of both research folders using `list_files`. Do not read any file content yet.

For each study folder found, score its name against the query on a simple 3-point scale:
- **Strong match** — the folder name directly names the topic (e.g. query: "onboarding", folder: "Onboarding Flow Optimization Study [Oct 2025]")
- **Possible match** — the folder name shares a product area or theme (e.g. query: "credit card", folder: "CC Homepage Revamp [Jan 2026]")
- **No match** — unrelated

Exclude non-study folders: `Participant CRM`, `Process Docs`, `How-To: Research`, `UXR Sessions`, `Toolkits`, `Product Profiles`, `Research Processes & SOP`, `Previous Research Materials (Saloni)`, `UXR Hiring`.

Tell the user what was found before reading anything:

> "Found [N] studies across [X] librar(y/ies). [N] look relevant to '[topic]':
> - [Study name] ([date]) — Strong match
> - [Study name] ([date]) — Possible match
>
> Reading their reports now…"

**Token guard:** If more than 5 studies match, list them all and ask:
> "Found [N] relevant studies — reading all of them will use significant context. Want me to read all [N], or narrow to the top 3 most relevant?"

Wait for confirmation before proceeding.

---

## Phase 3 — Navigate to Reports and Extract Findings

For each matched study, navigate to the report using the structure detection rules below. Then export and extract.

### Structure Detection

**Structured folders (Researcher 1 — numbered subfolders):**

After listing the study folder contents, if you see numbered subfolders (e.g. `1. Research Plan`, `2. Raw Data`, `3. Reports`):
1. Find the subfolder named `Reports`, `Final Reports`, `3. Reports`, or `5. Final Reports`
2. List its contents
3. Export the Google Doc or Slides file as `text/plain`

**Flat folders (Researcher 2 — files at root):**

If files appear directly in the study folder with no numbered subfolders:
1. Look for a file with "Insights", "Report", or "Analysis" in the name
2. Files are Office format — `.docx` (Word) for text-based reports, `.pptx` (PowerPoint) for presentation reports
3. Prefer `.docx` over `.pptx` when both exist — text extraction is cleaner
4. Export using `export_file` with `mimeType: text/plain` — this works for both Office and native Google formats
5. Skip `.xlsx`, `.csv`, and `.pdf` files — these are raw data, not insights reports

### Extraction Rules

From each report, extract:
- **Study metadata:** name, date, method (survey / usability test / competitive / quantitative), sample size (N=) if stated
- **Key findings:** the 3–5 most concrete findings — state as facts, not summaries. Include numbers and percentages where present.
- **Direct quotes:** 1–2 user quotes that best illustrate the core finding, if available
- **Product areas tagged:** which Jupiter features or journeys the study covers (UPI, onboarding, KYC, credit card, SA Pro, loans, rewards, etc.)

**Do not read raw data folders** (`Survey Responses`, `Raw Data`, `Session Recordings`). Reports and Final Reports only.

**If a report is a Google Slides presentation:** export as `text/plain` and extract slide titles and body text. The structure is less clean than a Doc — focus on slide titles that name findings and any data callouts in the body.

---

## Phase 4 — Output

### Quick Lookup (default)

Use this when the PM wants a fast reference or is exploring what exists.

```
## Research findings: [topic]
Searched [N] studies across Jupiter's research library. [N] relevant.

---

**[Study Name]** | [Date] | [Method] | N=[n]
- [Finding — concrete, with number or data point if available]
- [Finding]
- [Finding]
> "[Direct quote if available]"
Source: [Drive link]

---

**[Next study]** | ...
```

### PRD Evidence Block

Use this when the PM says this is for a PRD.

```
## Research Evidence — [topic]

> Use this section in your PRD's Problem Statement or User Insights.
> Each block is one study. Edit the implication line to fit your specific initiative.

---

**[Study Name]** ([Date] | [Method] | N=[n])
**Key finding:** [1–2 sentence finding, grounded in data]
**Supporting data:** [specific stat, percentage, or quote]
**Implication:** [1 sentence on what this means for the PRD — keep it factual, not prescriptive]
[Drive link]

---
```

For the Implication line: write it as "This suggests [product area] has [specific gap/opportunity]" — not as a recommendation. Leave the PM to draw the conclusion.

---

## Quality Rules

- Never state a finding without a source study
- If a report is a Slides deck and the text extraction is ambiguous, note: "This study is a presentation — extracted from slide text, which may be incomplete"
- If sample size is not stated in the report, write N=unknown
- If no relevant studies are found: tell the user plainly and suggest which studies exist that are closest, in case they want to read a partial match
- Do not read more than 6 report files per run — flag if the query matches more and ask the user to narrow it

---

## Suggest Next Steps

After output, offer:

- "Want me to `/synthesize-research` across these findings to identify themes?"
- "Should I pull this into a PRD? Run `/create-prd [topic]` and reference this evidence."
- "Need more depth on one study? Tell me which one and I'll read the full report."
