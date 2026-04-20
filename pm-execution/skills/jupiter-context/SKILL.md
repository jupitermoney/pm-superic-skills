---
name: jupiter-context
description: "Jupiter Money product team context. Load automatically for any product work at Jupiter Money: PRDs, Jira tickets, OKR planning, quarterly planning, stakeholder updates, sprint planning, or roadmaps. Contains org structure, Jira board routing, engineering contacts, OKR conventions, and calibration rules."
---

# Jupiter Money — Shared Product Context

This skill is the source of truth for Jupiter's product team structure, Jira board routing, engineering contacts, OKR conventions, and Jupiter-specific skill calibrations. It is embedded in the pm-execution plugin so it updates automatically whenever any PM updates the plugin.

---

## Org Structure

As of April 2026:

```
Rohit K. Pandey (President)
├── Abhishek Choudhari (VP Product & Design)
│   ├── Shipra Chandra              → Credit Card
│   ├── Rasleen Kaur                → PPI + PFM
│   ├── Shyamratan Anaparthy        → Rewards & Ecommerce + Insurance
│   ├── Rohit Narayani              → Lending + P2P
│   ├── Sparsh                      → OB & Activation + Homescreen
│   ├── Aayush M                    → Savings Account + Investments
│   └── Neeraj                      → Payments
├── Lakshya Sharma (Growth)         → Growth (Acquisition, Cross-sell, Campaigns)
└── Anand G (Customer Experience)   → CS Agents, Self-serve, CX tech
```

---

## Engineering Structure

| Pod | Backend Engineers | Backend Manager | Frontend |
|---|---|---|---|
| P2P | Ayush, Kuldeep, Akshit, Deepak | Animesh | Armaan |
| Credit Cards | Tanmay, Nitin, Charan, Rutvik | Animesh | Prasanna |
| Banking, OB, Investments, Homescreen + Eng Platform | Keshav, Tushar, Verma | Praveen | Ranjit |
| PFM | Abhi, Manu, Suraj | Praveen | Pratap |
| PPI | TBD | TBD | Akhil |
| Payments | Kartick, Ankita | Mithun | Pratap |
| Insurance | TBD | TBD | Chirag |
| CSTech | Dinesh, Shrijan, Parth | Mithun | Priyanshu |
| AI Charter & Data Platform | Vaibhav, Ritesh | Animesh | — |
| Rewards & Store | TBD | TBD | TBD |
| Loans | TBD | TBD | TBD |

---

## Atlassian

```
jupitermoney.atlassian.net
Cloud UUID: b16e5182-492f-4307-a082-84f40ba2ff77
Abhishek account ID: 712020:ea278dbc-00eb-498f-81c1-8f7eeaa19f08
```

---

## Jira Board Routing

Use this to determine which board to route any PRD, epic, or story to.

| Team / Domain | Active Board | Notes |
|---|---|---|
| Banking & Onboarding | `BO` | Also: `OBOC` (on-call) |
| Loans & Lending | `PLZ` | `L20` and `LENPRODUCT` deprecated — do not create new tickets |
| Credit Cards | `CCZ` | `CCP` and `CCT` deprecated |
| Payments | `PAYMENTS` | `PAY` (legacy) deprecated |
| P2P | `P2P` | |
| PFM | `PFM2` | Also: `DPO` (on-call) |
| Investments | `INV` | Also: `MFO` (ops) |
| Insurance | `INSTECH` | Also: `IO` (on-call) |
| PPI | `PPIX` | `PPI` deprecated |
| Rewards & Commerce | `RECO` | Also: `REWARDOPS` (ops) |
| CS / CX Tech | `CSCX` | Also: `CIR`, `CUIT`, `FDPT`, `ME`, `FTF` |
| Growth | `GT` | Also: `YOUT` (marketing) |
| Risk / ML | `DSCRM` | Data Science — Vikash Kumar |
| Platform / Infra | `DEV`, `FP`, `DSDP`, `OE` | Engineering-owned |

**Mandatory fields when creating any Jira Epic at Jupiter:**
- Impact (quantified)
- PRD committed date
- Go-live / delivery date
- PM owner
- Engineering owner

---

## Key Contacts

| Name | Role | Area |
|---|---|---|
| Abhishek Choudhari | VP Product & Design | Banking, Lending, CC, Payments, P2P |
| Rohit Pandey (RKP) | President | All LoBs |
| Jitendra Gupta (Jiten) | CEO | Company |
| Sparsh | PM — OB & Activation, Homescreen | OB, Homescreen |
| Aayush M | PM — Savings Account, Investments | SA, Investments |
| Rohit Narayani | PM — Lending + P2P | Personal Loans, P2P |
| Neeraj | PM — Payments | Payments |
| Rasleen Kaur | PM — PPI + PFM | PPI, PFM |
| Shipra Chandra | PM — Credit Cards | CC growth, SAU |
| Shyamratan Anaparthy | PM — Rewards & Ecommerce + Insurance | Commerce, flights, insurance |
| Abhyudaya Avasthi | PM — P2P (day-to-day) | P2P (under Rohit Narayani) |
| Deekshant Khitoliya | PM — PFM | PFM, AA |
| Jitender Singh | PM — Investments (day-to-day) | Gold, MF, FD |
| Akshat Garg | PM — Insurance (day-to-day) | All insurance |
| Shivam Mistry | PM — PPI (day-to-day) | Wallet, Pots |
| Lakshya Sharma | PM — Growth | Acquisition, Cross-sell, Campaigns |
| Anand G | Customer Experience | CS agents, self-serve, CX tech |
| Anand Sinha | Business — CC / Lending | CC P&L, partnerships |
| Vikash Kumar | Risk & Collections | Lending, CC |
| Balaji Rajendran | Legal & Compliance | All products |
| Rajat Jain | Analytics | All LoBs |

---

## OKR Conventions

Jupiter uses labelled OKR buckets. Map all planning to one of these:

| Label | Theme |
|---|---|
| O1 | Revenue Growth |
| O2 | Unit Economics |
| O3 | Improve CX / Fix DSAT |
| O4 | AI-driven Automation |
| O5 | Aspirational user-facing AI |
| Compliance | Regulatory, RBI, legal obligations |

Company OKRs change every quarter. Always ingest the current company OKR document at the start of any planning session — do not assume the themes above are the same as last quarter's labels.

**OKR quality rules — apply before finalising any team OKR:**
- Objective: qualitative, inspiring, no numbers in the statement itself
- Key Result: specific metric + current baseline + target + timeframe + owner
- Maximum 3 KRs per objective
- Maximum 2 objectives per team per quarter
- KRs must describe outcomes, not outputs

---

## Master Sheet Format (13 columns)

All initiative-level planning uses this structure:

| Company OKR | Pod/Area | Product | Initiative | Objective | Priority | Expected Go Live | Tech Effort | Apr Impact | May Impact | Jun Impact | Q Total | Dependencies |

**Rules that never break:**
- Leave blank what you do not know. Never fill or assume.
- Priority confirmed by PM: P0 / P1 / P2.
- Company OKR must match one of the named labels. Leave blank if genuinely ambiguous.
- Group rows: O1 first, then O2, O3, O4, O5, Compliance. Within each group, sort by Pod/Area then Product.

**Tech Effort scale:** S (1–2 wks) | M (2–4 wks) | L (1–2 months) | XL (2+ months)

---

## Jupiter-Specific Calibrations — PRD Review

Apply these when running `review-prd` at Jupiter:

**Don't flag missing citations or data sources.** PMs quote baseline numbers without citation. This is not a gap at Jupiter.

**Don't penalise missing baselines on 0-to-1 builds.** Flag baseline absence only when improving an existing flow where data already exists.

**Don't flag missing measurement method.** Absence of Amplitude event names is not a PRD gap — it is an implementation detail.

**Multiple scenarios not required.** One impact scenario is acceptable. Don't flag absence of conservative/optimistic models.

**Disbursal API failure and idempotency are not PRD gaps at Jupiter.** Infrastructure handles these.

**Why Now for lending PRDs must connect to:** AoP lending growth target, NTJ/ETJ split (~30% NTJ), low NTJ top-of-funnel, and lending-led profitability. Generic competitive reasons without this context are insufficient.

**NACH/SI for non-SA users is a recurring lending gap.** Web-acquired users won't have a Jupiter SA, so Standing Instruction won't be possible. Always flag as P0 in lending PRDs when NACH or mandate setup is in scope. Recovery paths for each non-SI failure state must be defined and live on day 1.

**Coaching output style:** Tight bullets, Slack-shareable, 6–7 points max per cluster. Max 11 words per bullet. No prose summaries.

**Positives should be short and personal.** Don't justify why something is good — just say it. Cut any sentence that starts with "This means" or "This prevents" in the positives section.

**Use "I felt" for criticism.** "I felt it lacked concrete evidence" not "This section needs a concrete comparison."

**Challenge impact vs effort.** After stating the impact number, add one line: does this move the needle at Jupiter's current scale? Flag if it doesn't.

**Suggest solutions with "maybe."** "Maybe a simple event-driven WhatsApp flow..." never prescribe a solution as a requirement.

**Always close coaching with an action and a date.** Last line should be a proposed next action with a time horizon.

---

## Confluence Spaces

| Space Key | Name | Owner / Use |
|---|---|---|
| `BP` | Banking Products | SA, OB, Homescreen |
| `LP` | Lending Products | Personal Loans |
| `PFM` | PFM | PFM, Account Aggregation |
| `MF` | Mutual Funds | Investments |
| `GE` | Growth and Engagement | Rewards & Ecommerce |
| `AE` | Agent Experience | CS / CX |
| `MAR` | Marketing | Growth |
| `TECH` | Technology | Engineering-wide |
| `DS` | Data Science | ML, Risk |
| `DSGN` | Design | Cross-team design |

---

## Partner Dependencies

| Partner | Domain |
|---|---|
| Federal Bank | SA, Metal Card, VKYC, Salary |
| CSB Bank | Credit Cards (Edge+, Mastercard, Secured) |
| KSF / Finsall / KB | Lending (co-lending) |
| HyperVerge | VKYC (SA) |
| Chubb | Insurance |
| RazorPay / PayU / Plural | Payments (PG into Varuna) |
| NPCI | CC UPI Autopay and Mastercard |
