---
description: Run a Voice of Customer analysis on Jira CS tickets, NPS verbatims, and Slack feedback to identify customer pain points, root causes, and trends over time
argument-hint: "[topic or 'general'] [optional: time window e.g. '3 months' or 'Jan 2026 to Mar 2026']"
---

# /voc-analysis — Voice of Customer Analysis

Ingest feedback from Jira CS tickets, NPS verbatims, and Slack channels. Cluster by root cause. Surface what the data shows — not a summary of what users felt.

## Invocation

```
/voc-analysis                                    # prompts for topic and time window
/voc-analysis general                            # all feedback, last 3 months
/voc-analysis credit-card                        # topic-specific, last 3 months
/voc-analysis credit-card Jan 2026 to Mar 2026   # topic + custom time window
```

## Workflow

Apply the **voc-analysis** skill in full.

The skill runs in five phases:

1. **Setup** — check data source connectivity (Jira MCP, Slack MCP), confirm topic and time window, check for previous runs
2. **Ingestion** — collect data from available sources; run data quality check on classification fields; exclude partial months
3. **Clustering** — classify every record, group into root-cause clusters using structured fields first, then free text
4. **Trend analysis** — monthly breakdown per cluster, trend labels, incremental diff against prior run if one exists
5. **Output** — save report as markdown, offer Confluence publish / HTML export / raw data CSV

## Output files

```
voc-reports/voc-[YYYY-MM-DD]-[topic].md         # always generated
voc-reports/voc-run-log.json                     # updated after every run
voc-reports/voc-[YYYY-MM-DD]-[topic].html        # if user requests HTML
voc-reports/voc-[YYYY-MM-DD]-[topic]-raw.csv     # if user requests raw export
```

## Notes

- Jira MCP or a CSV export is the minimum required data source — the skill will not run without at least one
- CSV exports from Jira do not follow a fixed column schema — the skill inspects actual headers and maps them
- CSV files larger than ~500KB are processed programmatically (Python/Bash) to avoid token budget exhaustion
- NPS and Slack are optional — the report notes which sources are absent
- Partial months at the start or end of the dataset are excluded from trend analysis automatically
- Raw data export (one row per feedback record with cluster, sub-cluster, classification tags, and all source fields) is available on request for further analysis in a spreadsheet or notebook
