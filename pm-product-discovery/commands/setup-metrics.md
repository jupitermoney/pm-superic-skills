---
description: Define your North Star Metric, classify the business game, build the full metrics framework, and design a dashboard with input metrics, health metrics, alert thresholds, and review cadence
argument-hint: "<product, feature area, or 'fix our North Star'>"
---

# /setup-metrics -- Product Metrics Framework and Dashboard

Define the right North Star for your product, build the metrics framework around it, and design a dashboard that actually changes decisions. Works for new products, recently launched features, and teams whose existing metrics feel wrong.

## Invocation

```
/setup-metrics B2B SaaS for team collaboration
/setup-metrics New checkout flow we just launched
/setup-metrics Help me fix our North Star — we're tracking DAU but it doesn't feel right
/setup-metrics             # asks what you're measuring
```

## Workflow

### Step 1: Understand What to Measure

Ask the user:
- What product or feature area are you setting up metrics for?
- What stage is it in? (pre-launch, recently launched, mature)
- What are the current business goals or OKRs?
- Do you have existing metrics? What's missing or broken?
- What analytics tools are you using?

Apply the **metrics-dashboard** skill — starting with Phase 0 intake and pressure-testing before any metrics are proposed.

### Step 2: Classify the Business Game and Define the North Star

**Classify which game the product plays:**
- **Attention**: Revenue from user time and engagement (media, social, ad-supported)
- **Transaction**: Revenue from purchases between parties (e-commerce, marketplace)
- **Productivity**: Revenue from efficiency gains (SaaS, tools, B2B)

The game determines which NSM candidates make sense. An Attention product measuring transactions is tracking the wrong thing.

**Propose 2-3 North Star candidates and validate each against 7 criteria:**

| Criterion | Question |
|---|---|
| Expresses value | Does it reflect value delivered to customers, not just company activity? |
| Leading indicator | Does it predict future revenue and retention, not just report the past? |
| Measurable | Is it trackable with a precise formula and data source? |
| Understandable | Can every person in the org define it in one sentence? |
| Actionable | Can product, engineering, and marketing teams directly influence it? |
| Not vanity | Would it still look good if users got the value through a bot or campaign fluke? |
| Not gameable | Can it be improved without actually delivering real user value? |

Recommend the strongest candidate with rationale. Explicitly name why common choices (DAU, revenue, sign-ups) were not selected.

**Output the North Star definition:**
```
North Star Metric: [precise name]
Definition: [formula — numerator / denominator / time window]
Business game: [Attention / Transaction / Productivity]
Why this metric: [connects to value delivery and revenue]
Current value: [if known]
Target: [goal]
```

### Step 3: Define the Full Metrics Framework

**Input Metrics (3-5):**
- Identify the levers that drive the North Star
- Each input metric should be directly actionable by a named team
- Together they should be MECE in explaining North Star movement
- Map the causal chain: Input → North Star → Business Outcome

**Health Metrics (3-5):**
- Metrics that should stay stable — if they degrade, something is wrong
- Examples: error rates, latency, support ticket volume, NPS, churn rate
- Define "healthy" ranges and degradation thresholds

**Counter-Metrics (1-2):**
- Metrics that could indicate you're optimising the wrong way
- Example: if North Star is "daily active users", counter-metric is "session quality" to prevent empty engagement

### Step 4: Design Alert Thresholds

For each metric:

| Metric | Green | Yellow | Red | Check Frequency |
|--------|-------|--------|-----|----------------|
| [metric] | [healthy range] | [warning] | [critical] | [daily/weekly] |

- **Yellow**: Investigate — something may be off
- **Red**: Act immediately — page someone or escalate

### Step 5: Create Dashboard Spec

```
## Metrics Framework: [Product/Feature]

**Business Game**: [Attention / Transaction / Productivity]

### North Star Metric
**Metric**: [precise name]
**Definition**: [formula — numerator / denominator / time window]
**Why this metric**: [value delivery, leads revenue, actionable]
**Current value**: [if known] | **Target**: [goal]

### Metrics Constellation
North Star: [metric]
├── Input: [metric 1] → driven by [team/action]
├── Input: [metric 2] → driven by [team/action]
├── Input: [metric 3] → driven by [team/action]
└── Counter: [metric] → watch for [degradation signal]

### Input Metrics
| Metric | Definition | Owner | Target | Current |
|--------|-----------|-------|--------|---------|

### Health Metrics
| Metric | Healthy Range | Yellow Threshold | Red Threshold |
|--------|-------------|-----------------|---------------|

### Counter-Metrics
| Metric | Why It Matters | Watch For |
|--------|---------------|-----------|

### Anti-Patterns Avoided
[Why we did not choose DAU, revenue, sign-ups, or other common but flawed metrics for this product]

### Implementation Notes
- Data sources: [where each metric comes from]
- Refresh frequency: [real-time / hourly / daily]
- Tool recommendations: [Amplitude / Mixpanel / Looker / Metabase — based on user's stack]

### Review Cadence
- **Daily**: North Star and health metrics
- **Weekly**: Input metrics trends — discuss in team standup
- **Monthly**: Deep dive — are inputs driving the North Star as expected?
- **Quarterly**: Reassess the framework itself
```

Save as a markdown file to the user's workspace.

### Step 6: Offer Next Steps

- "Want me to **write SQL queries** to compute these metrics?"
- "Should I **create OKRs** based on this metrics framework?"
- "Want me to **build a cohort analysis** to set realistic baselines?"
- "Should I **set up a weekly metrics review template**?"

## Notes

- A good North Star is rare — most teams pick vanity metrics. Push for a metric that captures *user value delivered*, not just engagement
- Input metrics should be MECE (mutually exclusive, collectively exhaustive) in explaining the North Star
- If the product is pre-launch, define metrics now but note that baselines will need calibration after launch
- Counter-metrics prevent Goodhart's Law — when a metric becomes a target, it ceases to be a good metric
- Recommend starting with fewer metrics, well-instrumented, over a sprawling dashboard nobody checks
