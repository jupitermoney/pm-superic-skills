---
name: metrics-dashboard
description: "Define a North Star Metric, classify the business game (Attention, Transaction, Productivity), validate the NSM against 7 criteria, then design a full product metrics dashboard with input metrics, health metrics, business metrics, visualizations, review cadence, and alert thresholds. Use when choosing a North Star Metric, setting up a metrics framework, creating a metrics dashboard, defining KPIs, or building a data monitoring plan."
---

## Product Metrics Dashboard

Design a comprehensive product metrics dashboard with the right metrics, visualizations, and alert thresholds.

### Context

You are designing a metrics dashboard for **$ARGUMENTS**.

If the user provides files (existing dashboards, analytics data, OKRs, or strategy docs), read them first.

### Domain Context

**Metrics vs KPIs vs NSM**: Metrics = all measurable things. KPIs = a few key quantitative metrics tracked over a longer period. North Star Metric = a single customer-centric KPI that is a leading indicator of business success.

**NSM is NOT**: multiple metrics, a revenue or LTV metric (it must be customer-centric, not company-centric), an OKR (OKRs are goal-setting; NSM is what you measure to know if you're winning), or a strategy. Choosing the right NSM is a strategic choice, but the NSM itself is a measurement, not a plan.

**The Three Business Games** — before choosing an NSM, classify the business:
- **Attention Game**: How much time do customers spend in the product? (Facebook, Spotify, YouTube, TikTok)
- **Transaction Game**: How many transactions occur between customers and the platform? (Amazon, Uber, Airbnb, PayPal)
- **Productivity Game**: How efficiently can someone complete their work or achieve their goals? (Canva, Dropbox, Loom, Notion)

The business game shapes which NSM candidates make sense. An Attention product measuring transactions is tracking the wrong thing.

**4 criteria for a good metric** (Ben Yoskovitz, *Lean Analytics*): (1) Understandable — creates a common language. (2) Comparative — over time, not a snapshot. (3) Ratio or Rate — more revealing than whole numbers. (4) Behavior-changing — the Golden Rule: "If a metric won't change how you behave, it's a bad metric."

**8 metric types**: Vanity vs Actionable (only actionable metrics change behavior), Qualitative vs Quantitative (WHAT vs WHY — you need both; never stop talking to customers), Exploratory vs Reporting (explore data to uncover unexpected insights), Lagging vs Leading (leading indicators enable faster learning cycles, e.g. customer complaints predict churn).

**5 action steps**: (1) Audit metrics against the 4 good-metric criteria. (2) Update dashboards — ensure all key metrics are good ones. (3) Identify vanity metrics — be careful how you use them. (4) Classify leading vs lagging indicators. (5) Pick one problem and dig deep into the data.

For case studies and more detail: [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics) by Ben Yoskovitz

### Instructions

**Before building the dashboard, run Phase 0. Do not skip this. A dashboard built on the wrong metrics is worse than no dashboard — it creates false confidence and drives bad decisions.**

---

## Phase 0: Intake and Pressure-Testing

### Step 1: Brain Dump

Ask the PM to share context:

> "Tell me about your product: what does it do, who uses it, and how do they get value from it? What are you currently measuring? Is there a metric you already think of as your North Star? What decision or problem is this dashboard meant to solve? Bullet points are fine."

Read everything before asking follow-ups.

### Step 2: Challenge the Answers

Push past the first answer on every dimension. Most PMs have thought about metrics — but surface-level thinking produces vanity dashboards that no one acts on.

**On what value the product actually delivers:**
- "You said users get value from [X]. What does that look like in their life or work — what specifically changes for them after using the product?"
- "If a user came back after a week and said the product was not useful, what would they have failed to do? That failure state often reveals the real value."
- If they say "users love it": "Love is not measurable. What behaviour shows that a user got the value they came for?"

**On what they are currently measuring:**
- "Walk me through the metrics you look at every week. For each one — if it went up 20%, what decision would you make differently?"
- If they cannot answer: "That is a vanity metric. A good metric changes your behaviour. Which of your current metrics actually does that?"
- "Which of your current metrics do you track but never act on? Those are candidates to remove, not add to a new dashboard."

**On the North Star hypothesis:**
- "If you had to pick one metric that, if it improved every week, you would be confident the business is healthy — what would it be?"
- Push back on their answer: "Is that metric customer-centric or company-centric? Revenue and DAU are company metrics — they tell you what happened to you, not what value you delivered to customers."
- "If that metric went up because of a one-time campaign or a bot, would it still look good? If yes, it may not be measuring real value."
- "Can your product team directly influence that metric through product decisions? If it depends mostly on marketing spend or seasonality, it is a poor North Star."

**On the business game:**
- "Does your product make money when users spend more time in it, when they complete more transactions, or when they accomplish their goal more efficiently?"
- If they say more than one: "Most products play more than one game, but they have a primary game. Which one, if you optimised for it, would grow the business fastest right now?"
- Challenge their classification: "If you said Productivity — then your NSM should reflect task completion, not time spent. Are you comfortable with a metric that goes down if users get faster at their job?"

**On what the dashboard is actually for:**
- "Who looks at this dashboard and how often? What do they do differently on a week when the numbers are bad versus a week when they are good?"
- "Have you had a metrics dashboard before? If yes, why did it stop being used?"
- If they cannot name a specific decision the dashboard enables: "A dashboard that does not change decisions is a reporting tool, not a management tool. Let us make sure this one earns its place."

### Step 3: Confidence Signal

After the intake, show the PM where their thinking is grounded and where it is assumption:

```
AREA                        STRENGTH               NOTE
Value delivered to users    [Grounded / Assumed / Unknown]    ...
Current metrics quality     [Actionable / Mixed / Vanity-heavy]    ...
NSM hypothesis              [Clear / Fuzzy / None]    ...
Business game               [Clear / Contested]    ...
Dashboard decision owner    [Named / Unclear]    ...
```

Tell them:

> "I can build the dashboard now. Where your thinking is grounded, I will design metrics that reinforce it. Where it is assumed or unclear, I will propose the metric but flag the assumption — you will need to validate it before treating the dashboard as a decision tool."

Ask: "Should we proceed, or do you want to work through any of these gaps first?"

---

0. **Classify the business game and choose the North Star Metric**

   **Step A**: Identify which game the business plays — Attention, Transaction, or Productivity.

   **Step B**: Propose 2-3 NSM candidates and validate each against the 7 NSM criteria:

   | Criterion | Question to ask |
   |---|---|
   | Easy to understand | Can every person in the org define this metric in one sentence? |
   | Customer-centric | Does it reflect value delivered to customers, not just company activity? |
   | Sustainable value | Does it indicate habits and long-term engagement, not one-off events? |
   | Vision alignment | Does improving this metric mean we are moving toward our mission? |
   | Quantitative | Is it measurable with a clear, numeric definition? |
   | Actionable | Can product, engineering, and marketing teams directly influence it? |
   | Leading indicator | Does it predict future revenue and retention, not just report the past? |

   A good NSM passes all 7. If a candidate fails more than 2, discard it and try another.

   **Step C**: State the chosen NSM clearly with its exact calculation and the reasoning behind selecting it over the alternatives.

1. **Identify the metrics framework** — organize metrics into layers:

   **North Star Metric**: The single metric that best captures core value delivery (chosen in Step 0)

   **Input Metrics** (3-5): The levers that drive the North Star

   **Health Metrics**: Guardrails that ensure overall product health

   **Business Metrics**: Revenue, cost, and unit economics

2. **For each metric, define**:

   | Metric | Definition | Data Source | Visualization | Target | Alert Threshold |
   |---|---|---|---|---|---|
   | [Name] | [Exact calculation: numerator/denominator, time window] | [Where the data comes from] | [Line chart / Bar / Number / Funnel] | [Goal value] | [When to trigger an alert] |

3. **Design the dashboard layout**:

   ```
   ┌─────────────────────────────────────────────┐
   │  NORTH STAR: [Metric] — [Current Value]     │
   │  Trend: [↑/↓ X% vs last period]             │
   ├──────────────────┬──────────────────────────┤
   │  Input Metric 1  │  Input Metric 2          │
   │  [Sparkline]     │  [Sparkline]             │
   ├──────────────────┼──────────────────────────┤
   │  Input Metric 3  │  Input Metric 4          │
   │  [Sparkline]     │  [Sparkline]             │
   ├──────────────────┴──────────────────────────┤
   │  HEALTH: [Latency] [Error Rate] [NPS]       │
   ├─────────────────────────────────────────────┤
   │  BUSINESS: [MRR] [CAC] [LTV] [Churn]        │
   └─────────────────────────────────────────────┘
   ```

4. **Set review cadence**:
   - **Daily**: Operational health (errors, latency, critical flows)
   - **Weekly**: Input metrics and engagement trends
   - **Monthly**: North Star, business metrics, OKR progress
   - **Quarterly**: Strategic review and metric recalibration

5. **Define alerts**:
   - What thresholds trigger investigation?
   - Who gets alerted and through what channel?
   - What's the expected response time?

6. **Recommend tools** based on the user's context:
   - Amplitude, Mixpanel, PostHog for product analytics
   - Looker, Metabase, Mode for SQL-based dashboards
   - Datadog, Grafana for operational health

Think step by step. Save the dashboard specification as a markdown document.

---

### Further Reading

- [The Ultimate List of Product Metrics](https://www.productcompass.pm/p/the-ultimate-list-of-product-metrics)
- [The North Star Framework 101](https://www.productcompass.pm/p/the-north-star-framework-101)
- [The Product Analytics Playbook: AARRR, HEART, Cohorts & Funnels for PMs](https://www.productcompass.pm/p/the-product-analytics-playbook-aarrr)
- [AARRR (Pirate) Metrics: The 5-Stage Framework for Growth](https://www.productcompass.pm/p/aarrr-pirate-metrics)
- [The Google HEART Framework: Your Guide to Measuring User-Centric Success](https://www.productcompass.pm/p/the-google-heart-framework)
- [Funnel Analysis 101: How to Track and Optimize Your User Journey](https://www.productcompass.pm/p/funnel-analysis)
- [Are You Tracking the Right Metrics?](https://www.productcompass.pm/p/are-you-tracking-the-right-metrics)
- [Continuous Product Discovery Masterclass (CPDM)](https://www.productcompass.pm/p/cpdm) (video course)
