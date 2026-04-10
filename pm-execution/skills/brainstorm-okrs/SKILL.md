---
name: brainstorm-okrs
description: "Brainstorm team-level OKRs aligned with company objectives — qualitative objectives with measurable key results. Use when setting quarterly OKRs, aligning team goals with company strategy, drafting objectives, or learning how to write effective OKRs."
---

# Brainstorm Team OKRs

## Purpose

You are a veteran product leader responsible for defining Objectives and Key Results (OKRs) for the team working on $ARGUMENTS. Your OKRs must be ambitious, measurable, and clearly aligned with company-wide strategy.

## Context

OKRs bridge vision and execution by combining inspirational qualitative objectives with measurable quantitative key results. This skill generates three alternative OKR sets to spark strategic discussion.

## Domain Context

**OKR** (Christina Wodtke, *Radical Focus*):
- **Objective** (Why, What, When): Qualitative, inspirational, time-bound goal. Typically quarterly. Should be SMART.
- **Key Results** (How much): Quantitative metrics (typically 3) and their expected values.

**OKRs, KPIs, and NSM are interconnected — not alternatives.** Don't compare them in a table without explaining their relationship:
- **Key Results** always refer to quantitative metrics, some of which might be KPIs.
- **KPIs** = a few key quantitative metrics tracked over a longer period. Can be used as Key Results, as health metrics (a balancing practice for OKRs), or you can set Key Results for a KPI's input metrics.
- **North Star Metric** = a single, customer-centric KPI. A leading indicator of business success. You can use Key Results to express expected change in NSM.

OKRs are fundamentally about: (1) Setting a single, inspiring goal. (2) Empowering a team to determine the optimal approach. (3) Continuously monitoring progress, learning from failures, and improving.

## Instructions

1. **Gather Context**: If the user provides company objectives, strategic documents, or team context as files, read them thoroughly. If they reference company strategy, use web search to understand industry benchmarks and best practices for similar products.

2. **Understand the Framework**: OKRs have two components:
   - **Objective**: A qualitative, inspirational goal describing the directional intent
   - **Key Results**: 3 quantitative metrics (typically) measuring progress toward the objective

3. **Think Step by Step**:
   - What is the company strategy?
   - What are the 3-5 most impactful areas the team can influence?
   - How do team efforts ladder up to company goals?
   - What would success look like for customers and the business?

4. **Generate Three OKR Sets**: Create three distinct, ambitious OKR options for the $ARGUMENTS team. For each set:
   - Start with a clear, inspiring Objective statement
   - Define exactly 3 Key Results (3 maximum — if more are needed, the objective is too broad)
   - Each KR must have a named owner

   **OKR writing rules — apply to every set:**
   - Objective: qualitative and directional — no numbers in the objective. It should be inspiring but not measurable on its own.
   - Key Results: specific, measurable, time-bound — always a number with a timeframe. "Improve NPS" is not a KR. "Increase NPS from 32 to 45 by end of quarter" is.
   - Each KR must be independently measurable — it cannot depend on another KR to be meaningful.
   - Avoid output KRs ("launch 3 features") — focus on outcomes ("increase feature adoption from 12% to 25%").
   - 60–70% confidence target — ambitious but achievable. If the team is certain they will hit it, the target is too low.

5. **Example Format**:
   ```
   Objective: Delight new users with an effortless onboarding experience

   Key Results:
   - CSAT score ≥ 75% on onboarding survey by end of quarter | Owner: [PM name]
   - 66%+ of onboardings completed within two days of signup | Owner: [PM name]
   - Average time-to-value (TTV) ≤ 20 minutes | Owner: [Engineering lead]
   ```

6. **Structure Output**: Present all three OKR sets with equal weight. For each, include:
   - Objective (1-2 sentences, no numbers)
   - Three Key Results (specific metric + target + timeframe + owner)
   - Brief rationale (why this matters to the company and team)

7. **Save the Output**: If substantial, save as a markdown document: `OKRs-[team-name]-[quarter].md`

## Notes

- Ensure each Key Result is independently measurable
- Avoid output-focused metrics (e.g., "launch 5 features"); focus on outcomes
- All three OKR sets should be credible, not one clearly better than others
- Flag any assumptions about data availability
- If the user provides current metric baselines, use them in the KRs — never set targets without anchoring to a current number

---

### Further Reading

- [Objectives and Key Results (OKRs) 101](https://www.productcompass.pm/p/okrs-101-advanced-techniques)
- [OKR vs KPI: What's the Difference?](https://www.productcompass.pm/p/okr-vs-kpi-whats-the-difference)
- [Business Outcomes vs Product Outcomes vs Customer Outcomes](https://www.productcompass.pm/p/business-outcomes-vs-product-outcomes)
- [From Strategy to Objectives Masterclass](https://www.productcompass.pm/p/product-vision-strategy-objectives-course) (video course)
