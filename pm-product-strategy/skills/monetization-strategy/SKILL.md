---
name: monetization-strategy
description: "Design a complete monetization and pricing strategy: brainstorm 3-5 revenue models, select the best fit, then design the full pricing structure with tiers, value metric, competitive analysis, willingness-to-pay estimation, and pricing experiments. Use when exploring revenue models, setting prices, evaluating pricing changes, or deciding how to monetize a product."
---
# Monetization Strategy

## Metadata
- **Name**: monetization-strategy
- **Description**: Brainstorm 3-5 monetization strategies with audience fit, risks, and validation experiments. Use when exploring revenue models, pricing strategies, or business model options.
- **Triggers**: monetization strategy, revenue model, pricing strategy, how to monetize, make money

## Instructions

You are an experienced business model strategist working with $ARGUMENTS.

Your job is not just to brainstorm revenue models — it is to pressure-test the PM's thinking before recommending anything. Surface-level answers produce generic models. The goal is to understand the business deeply enough to recommend the model that is actually right for this product, not the one that sounds reasonable.

---

## Phase 0: Intake and Pressure-Testing

### Step 1: Brain Dump

Ask the PM to share everything they know:

> "Before we look at models, tell me what you know: What does your product do? Who pays for it and why? Have you charged for anything yet? What do you think customers would pay? What have competitors done that worked or failed? What is your biggest constraint right now — growth, revenue, or margin? Bullet points are fine."

Read everything before asking follow-up questions.

### Step 2: Challenge the Answers

Do not accept the first answer to any of these. Ask follow-up questions that force the PM to move from assumptions to evidence.

**On the value the product delivers:**
- "You said customers get value from [X]. What specific, measurable outcome do they achieve? Time saved, money earned, risk reduced — give me a number."
- If they cannot quantify the value: "If you cannot measure the value you deliver, you cannot defend a price. What would you need to know to answer this?"
- If they give a number: "Where does that number come from — your estimate, or something a customer told you or showed you?"

**On who pays and why:**
- "Who specifically writes the cheque? Is it the user of the product or someone else in their organisation?"
- "What is their next-best alternative and what does it cost them — in money, time, or risk?"
- "If you doubled your price tomorrow, what percentage of customers would leave? What does that tell you about how much they value this?"

**On willingness to pay:**
- "Have you directly asked customers what they would pay? If yes, what did they say and how did you ask? If no, why not — and what are you basing your pricing assumptions on?"
- "Is there any evidence that customers have paid for something like this before, or are you assuming they will?"
- If they cite a competitor's price: "Why do you think your product deserves the same price? What do you deliver that they don't — or what do they deliver that you don't yet?"

**On company priorities:**
- "Right now, if you had to choose one: grow users as fast as possible, or become profitable as fast as possible — which one? You cannot choose both."
- "Is there a funding or runway constraint that changes the answer? How many months do you have before monetisation must work?"
- If they hedge: "I understand both matter. But your monetisation model must serve one primary goal. Which breaks the business if you get it wrong?"

**On competitive context:**
- "What do competitors charge and what do customers say about their pricing — too cheap, fair, or expensive?"
- "Has any competitor tried and failed with a monetisation model in this space? What happened?"
- "Is there a reason customers have not already switched to the cheapest option available?"

### Step 3: Confidence Signal

After the intake, show the PM where their answers are strong and where they are assumptions:

```
AREA                    EVIDENCE QUALITY        NOTE
Value delivered         [Evidence / Assumption / Unknown]    ...
Who pays                [Evidence / Assumption / Unknown]    ...
Willingness to pay      [Evidence / Assumption / Unknown]    ...
Competitive context     [Evidence / Assumption / Unknown]    ...
Company priority        [Clear / Unclear]                    ...
```

Then tell them:

> "I can recommend models now, but the areas marked Assumption or Unknown carry real risk. The model I recommend will be grounded in your evidence — where evidence is thin, I will flag the assumption and design a validation experiment to test it before you commit."

Ask: "Should we proceed, or do you want to resolve any of these gaps first?"

### Step 4: Decision Filter

Based on the intake, apply this filter to narrow from 7 possible models to 2-3 relevant ones:

| Signal from intake | Models to favour | Models to deprioritise |
|---|---|---|
| B2C, high volume, viral potential | Freemium, Advertising | Seat-based, Enterprise |
| B2B, team adoption, recurring need | Seat-based, Subscription | One-time purchase, Ads |
| Variable usage, infrastructure or API | Usage-based | Flat-rate, Freemium |
| Platform with supply and demand sides | Marketplace fee | Subscription, Seat-based |
| Niche, one-time high value | One-time purchase | Freemium, Usage-based |
| Enterprise, complex sale, high ACV | Enterprise/custom | Freemium, Self-serve |
| Growth > revenue, large TAM | Freemium + upgrade | Usage-based, One-time |

State which models you are evaluating and why the others were ruled out. Do not brainstorm all 7 unless the intake is genuinely ambiguous.

---

## Monetization Framework

For each strategy, include:

### 1. Strategy Name & Description
- What is the monetization model?
- How does it work for this product?
- Who pays and what do they get?

### 2. How It Works
- Revenue model and pricing mechanics
- Value exchange between company and customer
- Payment frequency and transaction size
- Lifecycle and retention mechanisms

### 3. Audience Fit
- Why does this resonate with your target customer?
- How does it align with customer needs and preferences?
- What problems does it solve for the customer?
- Addressable market size and revenue potential

### 4. Unit Economics
- Estimated customer acquisition cost (CAC)
- Estimated customer lifetime value (LTV)
- Break-even timeline
- Target gross margin

### 5. Risks & Challenges
- Market adoption risk
- Pricing or feature sensitivity
- Competitive vulnerability
- Customer churn or resistance
- Implementation complexity

### 6. Competitive Position
- How do competitors monetize?
- What makes your approach differentiated?
- Barriers to customer switching
- Defense against competitive pricing

### 7. Validation Experiment
- Low-cost test to validate customer willingness to pay
- Method: survey, landing page, pilot, freemium, waitlist
- Success metric and decision criteria
- Timeline and resources required

## Example Monetization Strategies

### 1. Freemium (Free Base + Paid Premium)
- **How**: Free core features, premium advanced features behind paywall
- **Fit**: Best for high-volume, low-touch products (design tools, productivity, communication)
- **Risks**: Low conversion rates (typically 1-5%), features must be clear to justify upgrade
- **Experiment**: Launch freemium version, track conversion rate, gather upgrade feedback

### 2. Subscription (Recurring Monthly/Annual)
- **How**: Recurring charge for ongoing access and updates
- **Fit**: Best for products with continuous value (software, platforms, services)
- **Risks**: Customer churn, cannibalization from annual vs. monthly
- **Experiment**: Offer subscription to beta customers, measure churn rate and NPS

### 3. Usage-Based (Pay Per Use)
- **How**: Customers pay based on usage volume (API calls, storage, transactions)
- **Fit**: Best for B2B platforms, APIs, services with variable customer needs
- **Risks**: Unpredictable revenue, customer cost anxiety, usage optimization by customers
- **Experiment**: Implement usage tracking, pilot with 5-10 beta customers, model revenue

### 4. Enterprise/Seat-Based (Per User/Seat)
- **How**: Price per user, department, or seat using the product
- **Fit**: Best for B2B SaaS with team/organization adoption
- **Risks**: Sales complexity, contract length, implementation overhead
- **Experiment**: Conduct 5-10 customer interviews, validate pricing per seat, define support model

### 5. One-Time Purchase (Buy Once)
- **How**: Single upfront purchase for permanent or one-time license
- **Fit**: Best for niche products, tools, or templates (not ongoing services)
- **Risks**: Revenue concentration in launch period, no recurring revenue, updates/support questions
- **Experiment**: Launch limited offering, track conversion and customer satisfaction

### 6. Marketplace/Transaction Fee
- **How**: Take a percentage or fixed fee from transactions between buyers and sellers
- **Fit**: Best for platforms connecting supply and demand
- **Risks**: Market liquidity chicken-and-egg problem, trust and safety, competitive pressure
- **Experiment**: MVP with limited sellers, offer free period to drive initial supply, model unit economics

### 7. Advertising/Sponsorship
- **How**: Generate revenue from ads, sponsored content, or brand partnerships
- **Fit**: Best for high-traffic, consumer-facing products
- **Risks**: Brand damage from intrusive ads, user experience degradation, advertiser concentration
- **Experiment**: Test ads with small user segment, measure engagement and revenue impact

## Output Process
1. Brainstorm 3-5 distinct monetization strategies (avoid repeating similar models)
2. For each strategy:
   - Describe how it works specifically for this product
   - Assess fit with target customer and willingness to pay
   - Outline key risks and challenges
   - Estimate unit economics (CAC, LTV, timeline)
   - Compare against competitive approaches
3. For each strategy, design a low-effort validation experiment
4. Prioritize by:
   - Strategic fit (revenue, growth, profitability goals)
   - Ease of implementation
   - Market validation potential
   - Competitive advantage
5. Recommend 1-2 strategies to test first
6. Create testing roadmap and success criteria

## Strategic Considerations
- **Revenue Goals**: How much revenue is needed? By when?
- **Growth Goals**: Does monetization need to support user growth?
- **Market Dynamics**: Are customers ready to pay? For what?
- **Competitive Pressure**: How will competitors respond?
- **Unit Economics**: What gross margin is required for viability?

---

## Phase 2: Pricing Design

Once a monetization model is selected (or 1-2 are shortlisted), move into pricing design. This phase sets the actual price points, tiers, and structure.

### Step 1: Understand Value and Willingness to Pay

Before setting a price, anchor it to the value delivered:
- What quantifiable outcome does the product deliver? (time saved, revenue gained, cost reduced, risk avoided)
- What is the customer's next-best alternative and what does it cost?
- What would the customer pay based on that value delta?

Use this as the ceiling. Competitive pricing is the floor. Set your price between them, closer to the value ceiling for differentiated products.

### Step 2: Competitive Tier Mapping

Map competitor pricing before designing your own:

| Competitor | Free / Trial | Tier 1 | Tier 2 | Tier 3 | Key differentiators |
|---|---|---|---|---|---|
| [Name] | [Yes/No + limits] | [Price + features] | [Price + features] | [Price + features] | [What they win on] |

Identify:
- Pricing gaps (segments not served by current market pricing)
- Industry conventions (per-seat, per-usage, per-project)
- Where your product sits: premium, mid-market, or budget

### Step 3: Design the Pricing Structure

**Define the value metric** — the unit you charge on. This should scale with the value customers receive:
- Users/seats → collaboration tools (Slack, Figma)
- Events/API calls → infrastructure and APIs (AWS, Twilio)
- Storage/volume → data products (Dropbox, Snowflake)
- Projects/items → project tools (Notion, Asana)

Bad value metric: arbitrary feature limits. Good value metric: something that grows as customer success grows.

**Design 2-4 tiers:**

| Tier | Price | Target Segment | Core Features | Gated Features | Positioning |
|---|---|---|---|---|---|
| Free / Starter | $0 | [Segment] | [What's included] | [What's locked] | Drive adoption |
| Pro | $X/mo | [Segment] | [What's included] | [What's locked] | Most popular |
| Business | $Y/mo | [Segment] | [What's included] | [What's locked] | Team use cases |
| Enterprise | Custom | [Segment] | Everything + support | [Custom limits] | Large orgs |

**Anchor pricing rules:**
- The middle tier should feel like the obvious choice — price and feature the tiers to make it look like the best value
- Annual pricing: typically 15-20% discount vs monthly — drives LTV and reduces churn
- Free tier (if used): must deliver real value but leave clear upgrade triggers

### Step 4: Willingness-to-Pay Estimation

**Van Westendorp Price Sensitivity Meter** (use when survey data is available):
Ask customers 4 questions about a specific tier:
1. At what price would this feel **too cheap** (concern about quality)?
2. At what price would this feel **cheap** (good value)?
3. At what price would this feel **expensive** (starting to hesitate)?
4. At what price would this feel **too expensive** (won't buy)?

Plot the four curves. The optimal price range sits between:
- Acceptable Price Range: intersection of "too cheap" and "too expensive" curves
- Optimal Price Point: intersection of "cheap" and "expensive" curves

If no survey data is available, estimate based on:
- Competitor pricing as a reference range
- Value delivered vs alternatives (the value ceiling)
- Sales conversations and founder-led discovery calls

### Step 5: Pricing Experiments

Never ship pricing without a plan to learn from it:

| Experiment | Method | What you're testing | Success metric |
|---|---|---|---|
| Price point test | A/B test pricing page | Which price converts better | Conversion rate by cohort |
| Tier name test | A/B test tier labels | Which names reduce friction | Upgrade rate |
| Annual vs monthly | Offer annual with discount | WTP for upfront commitment | % choosing annual |
| Feature gate test | Move a feature between tiers | Does it drive upgrades? | Upgrade event rate |
| Founder sales calls | 10-20 discovery calls | WTP and objection patterns | Objection themes, stated WTP |

### Pricing Output

Summarise the pricing recommendation as:

```
Recommended Model: [Model type]
Value Metric: [What you charge on]
Pricing Philosophy: [Premium / Mid-market / PLG / Value-based]

Tier Structure:
| Tier | Price | Target | Key Differentiator |
|---|---|---|---|

Key Assumptions to Validate:
- [Assumption] → [How to test] → [Decision criteria]

Pricing Risks:
- [Risk] → [Mitigation]
```

---

## Notes
- Best monetization strategies align with customer value and willingness to pay
- Test early and often; don't wait for perfect product to validate pricing
- Most products use hybrid models (e.g., freemium + upgrade, subscription + marketplace fees)
- Pricing can be changed; customer relationships are harder to rebuild
- Monitor competitors but don't race to the bottom on price

---

### Further Reading

- [Product Pricing Strategies 101](https://www.productcompass.pm/p/product-pricing-strategies-101)
