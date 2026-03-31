---
description: Expert CPO-level PRD review — scores across 8 dimensions, flags assumptions and biases, runs adversarial perspectives, and coaches the PM on how to improve
argument-hint: "<paste PRD or upload PRD file>"
---

# /review-prd -- Expert PRD Review

Get a rigorous, honest review of any PRD. Scored out of 100 across 8 dimensions with specific gap analysis, adversarial questions from engineering, QA, and compliance, and growth coaching for the PM.

## Invocation

```
/review-prd [paste PRD content]
/review-prd [upload a PRD markdown or doc file]
/review-prd This is a pre-engineering PRD for our new KYC flow [paste content]
```

## Workflow

### Step 1: Accept the PRD

Accept in any format: pasted markdown, uploaded file, Google Doc link, or Confluence link. Read the entire document before forming any view.

If the user does not indicate the maturity stage, ask one question:

> "Is this an early draft, pre-engineering scoping, or pre-launch sign-off? This calibrates what I hold the PRD to."

### Step 2: Apply the review-prd skill

Run the full **review-prd** skill workflow:

1. Classify the PRD domain (KYC, payments, onboarding, growth, compliance, etc.)
2. Generate expected coverage for that domain before looking at gaps
3. Hunt unstated assumptions and bias patterns (confirmation, solutioning, recency, optimism, availability, effort justification, scope comfort)
4. Score across 8 dimensions: problem definition (20), why now (10), user definition (10), success metrics (15), solution design (15), requirements quality (10), edge cases (15), execution readiness (5)
5. Run adversarial perspectives from Senior Engineer, QA Lead, and Compliance Reviewer
6. Deliver coaching output with scorecard, gap analysis, adversarial questions, and priority fixes

### Step 3: Deliver the Review

Output in this structure:

- Overall score and honest calibration paragraph
- Scorecard table
- What works (3-5 specific strengths with citations)
- Assumptions flagged
- Biases detected
- Domain gap analysis (Present / Partial / Missing with severity)
- Adversarial questions by role
- Growth coaching for the PM
- Top 5 priority fixes in order of impact

### Step 4: Offer Next Steps

After the review, offer:
- "Want me to **rewrite the weak sections** based on the gaps I identified?"
- "Should I **run a pre-mortem** on the solution design?"
- "Want me to **generate test scenarios** for the edge cases I flagged?"
- "Should I **create acceptance criteria** for the requirements that are currently too vague?"

## Notes

- A score above 85 should feel rare and earned — do not inflate
- Most PRDs score 60-80; calibrate expectations accordingly
- The domain gap analysis is the highest-value output — it surfaces what the author did not know to include
- Growth coaching is for the PM's development, not the document — keep it constructive and specific
- If the PRD is very early stage, focus feedback on problem definition and why now, not missing ACs
