---
description: Search Jupiter's research library and surface relevant findings for a topic, PRD, or question
argument-hint: "<topic, question, or product area>"
---

# /find-research — Jupiter Research Library

Search Jupiter's Google Drive research library and get back findings you can use immediately — in a quick reference list or formatted as a PRD evidence block.

## Invocation

```
/find-research SA Pro churn
/find-research credit card onboarding — for a PRD
/find-research what do we know about UPI failures?
/find-research homescreen redesign
```

## Workflow

Apply the **find-research** skill to:

1. Check Google Workspace MCP is connected (hard requirement — will stop if not)
2. Scan both Jupiter research libraries by study name against your topic
3. Navigate to each relevant study's report (handles both structured and flat folder styles)
4. Extract key findings, data points, and quotes
5. Output in Quick Lookup or PRD Evidence Block format

## Notes

- **Requires Google Workspace MCP** — connect it before running
- Covers all studies in [UX Research @Jupiter](https://drive.google.com/drive/folders/18j1txWhy5LAXhh3MMJpN79eho36e_jM8) and the Jupiter Research library
- Only reads final reports — not raw data, transcripts, or discussion guides
- Add "for a PRD" to your query to get output formatted for direct paste into a PRD's Problem Statement or User Insights section
- Pair with `/synthesize-research` if you want to synthesize findings from multiple studies into themes
