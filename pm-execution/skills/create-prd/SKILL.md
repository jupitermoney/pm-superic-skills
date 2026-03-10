---
name: create-prd
description: "Create a Product Requirements Document using a comprehensive 8-section template covering problem, objectives, segments, value propositions, solution, and release planning. Use when writing a PRD, documenting product requirements, preparing a feature spec, or reviewing an existing PRD."
---

# Create a Product Requirements Document

## Purpose

You are an experienced product manager responsible for creating a comprehensive Product Requirements Document (PRD) for $ARGUMENTS. This document will serve as the authoritative specification for your product or feature, aligning stakeholders and guiding development.

## Context

A well-structured PRD clearly communicates the what, why, and how of your product initiative. This skill uses an 10-section template proven to communicate product vision effectively to engineers, analysts, designers, leadership, and stakeholders.

## Instructions

1. **Gather Information**: If the user provides files, read them carefully. If they mention research, URLs, or customer data, use web search to gather additional context and market insights. If the user does not provide files, ask clarifying questions and gather as much context as you can before starting

2. **Think Step by Step**: Before writing, analyze:
   - What is the problem we are solving?
   - How do we know this a problem?
   - Why does it matter right now?
   - Who are we solving it for?
   - What would success look like? (How will we measure success? and how will we know it wroked?)
   - What are our constraints, risks and assumptions?
   - What are we building?
If any of these is weak, the PRD fails downstream.

3. **Apply the PRD Template**: Create a document with these 10 sections:

   **Context** (2-3 sentences)
   - What changed in the business/product/market?
   - What triggered this PRD now?
   - One-line framing of the opportunity

   **What is the problem we are trying to solve**
   - Precise description of the problem
   - Data evidence (quantitative or qualitative) (how do we know this is a problem statement)
   - User impact (who feels this and how)
   - Business impact (revenue/retention/growth)

   **Why Now**
   - What makes this urgent vs. 6 months ago?
   - What capabilities/data are now ready?
   - What happens if we don't solve this?

   **4. What does success look like**
   - What's the objective? Why does it matter?
   - How will it benefit the company and customers?
   - How does it align with vision and strategy?
   - Key Results: How will you measure success? (Use SMART OKR format)

   **5. Market Segment(s)**
   - For whom are we building this?
   - What constraints exist?
   - Note: Markets are defined by people's problems/jobs, not demographics

   **6. Value Proposition(s)**
   - What customer jobs/needs are we addressing?
   - What will customers gain?
   - Which pains will they avoid?
   - Which problems do we solve better than competitors?
   - Consider the Value Curve framework

   **7. Solution**
   - 7.1 UX/Prototypes (wireframes, user flows)
   - 7.2 Key Features (detailed feature descriptions)
   - 7.3 Technology (optional, only if relevant)
   - 7.4 Assumptions (what we believe but haven't proven)

   **8. Release**
   - How long could it take?
   - What goes in the first version vs. future versions?
   - Avoid exact dates; use relative timeframes

4. **Use Accessible Language**: Write for a primary school graduate. Avoid jargon. Use clear, short sentences.

5. **Structure Output**: Present the PRD as a well-formatted markdown document with clear headings and sections.

6. **Save the Output**: If the PRD is substantial (which it will be), save it as a markdown document in the format: `PRD-[product-name].md`

## Notes

- Be specific and data-driven where possible
- Link each section back to the overall strategy
- Flag assumptions clearly so the team can validate them
- Keep the document concise but complete

---

### Further Reading

- [How to Write a Product Requirements Document? The Best PRD Template.](https://www.productcompass.pm/p/prd-template)
- [A Proven AI PRD Template by Miqdad Jaffer (Product Lead @ OpenAI)](https://www.productcompass.pm/p/ai-prd-template)
