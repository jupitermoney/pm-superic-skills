# Jupiter — Team & Board Map

Source of truth for Jupiter product team structure, Jira boards, Confluence spaces, engineering contacts, and OKR context. Loaded by skills including `plan-okrs`, `create-prd`, `prd-to-epics`, `expert-pm-tracker`, and `stakeholder-update`.

**Cloud ID**
```
jupitermoney.atlassian.net
Cloud UUID: b16e5182-492f-4307-a082-84f40ba2ff77
```

---

## Org Structure

Leadership hierarchy as of April 2026:

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

Frontend and backend managers per pod as of April 2026:

| Pod | Backend Engineers | Backend Manager | Frontend Engineer |
|---|---|---|---|
| P2P | Ayush, Kuldeep, Akshit, Deepak | Animesh | Armaan |
| Credit Cards (product + risk tech) | Tanmay, Nitin, Charan, Rutvik | Animesh | Prasanna |
| Banking, Onboarding, Investments, Homescreen + Eng Platform | Keshav, Tushar, Verma | Praveen | Ranjit |
| PFM | Abhi, Manu, Suraj | Praveen | Pratap |
| PPI | TBD | TBD | Akhil |
| Payments | Kartick, Ankita | Mithun | Pratap |
| Rewards & Store | TBD | TBD | TBD |
| Insurance | TBD | TBD | Chirag |
| CSTech | Dinesh, Shrijan, Parth | Mithun | Priyanshu |
| AI Charter & Data Platform | Vaibhav, Ritesh | Animesh | — |
| SumHR | Kiran | Appy | — |
| Loans (product + risktech) | TBD | TBD | TBD |

---

## Team Map

---

### Banking & Onboarding

**Product domain:** Savings Account (PRO, Salary, non-salaried), Metal/Aurora Debit Card, VKYC/KYC, onboarding flows, home page harmonisation (TPAP + SA), mandates, MTPU, non-affluent offload

**Jira:**
- Board (primary): `BO` — https://jupitermoney.atlassian.net/jira/software/c/projects/BO/boards/3328/timeline — active
- Board (on-call): `OBOC` — OB-OnCall — high volume, operational escalations
- Issue types in use: Epic, Story, Bug, Tech Task, Product Task

**Confluence:**
- Space: `BP` (Banking Products) — https://jupitermoney.atlassian.net/wiki/spaces/BP
- PROD space sections: `OB & Activation` — PM: Sparsh | `Homescreen` — PM: Sparsh | `Savings Account` — PM: Aayush M

**Key contacts:**
- PM owner: Abhishek Choudhari (VP Product)
- OB & Activation + Homescreen: Sparsh
- Savings Account: Aayush M
- Engineering (backend): Keshav, Tushar, Verma | Backend Manager: Praveen | Frontend: Ranjit
- Design: Adyatha Bhat, Yaman Chourey

**OKR context (JFM 2026):**
- Active PRO Base: Jan >90K, Feb >100K, Mar >120K (baseline Dec: ~76K → Mar actuals: 77,647)
- Active Salary Base: Feb >75K, Mar >100K (monthly salary >₹50K)
- Mandates: +15% MoM (baseline: Dec)
- Metal Card (Aurora) acquisition: Jan >500, Feb >1000, Mar >1500 (cumulative)
- Overseas DC spends: +5% MoM
- MTPU: +15% MoM (baseline Dec: ~50 transactions/user)
- TPAP home page harmonisation: deadline Jan 31 — Done (BO-378)
- Offload non-affluent inactive users: deadline Mar 31
- New SA onboarding flow (pre-funding + VKYC): In progress (BO-443 to BO-470 range)
- Reduce cloud cost 5% (baseline OND)

**Key metric baselines:**
- PRO base Jul 2025: 60,959 | Mar 2026: 77,647
- Metal Card launched: Dec 18, 2025 — 67 cards in week one
- SA MTPU Oct: 49, Nov: 43, Dec: 50

**Skill routing notes:**
- PRDs for Banking features → create in BO project, Epic type
- Jira tickets for debt items → reference debt tracker sheet: https://docs.google.com/spreadsheets/d/1RttJH2xZ9qY0z1wwBwnckuWd2eS77Y7n1VQHopV4lzc
- When creating epics, mandatory fields: impact, PRD committed date, timelines

---

### Loans & Lending

**Product domain:** Personal Loans, VKYC (VideoCX), CIBIL/bureau consent, MoneyTor CRM, disbursal campaigns, risk policy, onboarding tech debt, co-lending (KSF, Finsall, KB), collections (AI voice bots, DPD buckets), P&L

**Jira:**
- Board (primary): `PLZ` — https://jupitermoney.atlassian.net/jira/software/c/projects/PLZ/boards/3529 — "Personal Loans - Product Design & Tech" — active
- Board (deprecated): `LENPRODUCT` — "Lending Product" — duplicate of PLZ; do not create new tickets here
- Critical migration pending: LENPRODUCT-200 ("New event creation in place of previous repayment events") — To Do, move to PLZ
- Board (risk/ML): `DSCRM` — Risk Tech — active, ML models, scoring, BRE (Data Science / Vikash Kumar)
- Board (on-call): `LENDING2ON` — Lending-2-OnCall — active operational board
- Board (deprecated): `L20` — "Loans" — last ticket Feb 24 2026; do not create new tickets here

**Confluence:**
- Space: `LP` (Lending Products) — https://jupitermoney.atlassian.net/wiki/spaces/LP
- PROD space sections: `Lending` — PM: Rohit Narayani

**Key contacts:**
- PM owner: Abhishek Choudhari (VP Product)
- Lending: Rohit Narayani
- Risk / Credit: Vikash Kumar
- Engineering: Anant Agrawal, Abhishek Mishra, Armaan M
- Collections: Srikanth R, Animesh Mishra
- Ops/FinOps: Sayani Mitra, Mahesh Lotankar

**OKR context (JFM 2026):**
- Monthly disbursals: Jan ₹95 Cr, Feb ₹105 Cr, Mar ₹120 Cr (actuals: Oct ₹61.5 Cr → Mar ₹79.1 Cr)
- VideoCX VKYC for Lending: Done (independent integration, live — separate from CSB/CC)
- CIBIL/Bureau consent during onboarding: Jan 12 — Done
- Onboarding tech debt clearance: Jan 31
- MoneyTor CRM (telecalling): Feb 16 — In Dev (PLZ, was L20-747/748)
- AI voice bots for pre/post due calling: Jan 19
- Risk tech debt reduction: Jan 31
- Cloud cost reduction 5% (baseline OND)

**Key metric baselines:**
- Disbursals Oct 2025: ₹61.5 Cr | Mar 2026: ₹79.1 Cr
- Bounce rate: 8-9% (good standing)

**Escalation matrix (lending ops):**
- L0: Finops org
- L1: Sayani Mitra (ops)
- L2: Anand Sinha, Abhishek Choudhari

**Skill routing notes:**
- Lending PRDs → PLZ project, Epic type
- Risk/ML model work → DSCRM project (owned by Data Science / Vikash Kumar)
- MoneyTor CRM epic: find in PLZ (migrated from L20-747/748)
- L20 is deprecated — do not create new tickets there
- Lending exceptions tracker: https://docs.google.com/spreadsheets/d/1v1rRhr8IdpxtVO-9UflobrPYUPFr__Zwy3kEFuk06GM

---

### Credit Cards

**Product domain:** Edge+ (RuPay + Mastercard), Secured Card (CSB), cross-border transactions, home page revamp, collection efficiency, EMI balance, BRE policy, VKYC (shared with Lending), onboarding, rewards cost reduction

**Jira:**
- Board (primary): `CCZ` — https://jupitermoney.atlassian.net/jira/software/c/projects/CCZ/list — canonical for all CC work
- Board (deprecated): `CCP` — Credit Cards Product & Growth — no critical open items; do not create new tickets here
- Board (deprecated): `CCT` — Credit Cards Tech — no critical open items; do not create new tickets here
- Board (on-call): `CCOC` — Credit Card On Call — active
- Board (CS ops): `ECCS` — Edge Card CS — active, high volume (customer escalations)
- Board (waivers): `ECW` — Edge Card Waivers — active
- Issue types in use: Epic, Story, Bug, Tech Task, Product Task

**Confluence:**
- Space: TBD — no dedicated CC space found
- PROD space section: `Credit Card` — PM: Shipra Chandra

**Key contacts:**
- PM owner: Abhishek Choudhari (VP Product, took over from Chinmay Agarwal Feb 2026)
- Credit Card: Shipra Chandra
- Business/revenue: Anand Sinha
- Risk: Amit Agarwal, Vikash Kumar, Aliya Konain
- Engineering (backend): Tanmay, Nitin, Charan, Rutvik | Backend Manager: Animesh | Frontend: Prasanna
- Design: Paromita Halder, Arushi Pandey

**OKR context (JFM 2026):**
- SAU: Jan >98K, Feb >110K, Mar >120K
- CC acquisition: Jan >10K, Feb >14K, Mar >18K
- Cross-sell (70% of acq): CAC ≤ ₹1,500
- Rewards cost: 5% MoM reduction
- Mastercard Edge+ go-live: Jan 31 → In Dev (CCZ-44), CUG ready
- Secured Card (CSB): Feb 16 → In progress
- Cross-border transactions: Jan 15 → In progress
- Home page revamp: Jan 22
- BRE policy (CCZ-282): PRD stage
- EMI balance to 11% by end of quarter
- AI funnel intervention: Jan 21
- CVP plan for Edge+ upgrade: Jan 31 (planning only)
- Reduce cloud cost 5% (baseline OND)
- Collection: Bucket X 95%, Bucket 1 50%, Bucket 2 30%, Bucket 3+ 10%

**Skill routing notes:**
- CC PRDs → CCZ project, Epic type
- CSB partner dependencies: loop in Akhilesh Jha and Anand Sinha on all external threads
- Mastercard CPV certification: active external thread (CSB + network)

---

### Payments

**Product domain:** Payments page (configurability, instrument ordering, offers), PG integrations (RazorPay, PayU, Plural → Varuna), cross-sell on payments (EMI/Loans), UPI autopay, tech debt

**Jira:**
- Board (primary): `PAYMENTS` — "Pay" — canonical, active as of Apr 2026 (294 tickets, Kartick Gulati / Manu Singla)
- Board (deprecated): `PAY` — "Payments" — legacy board, 13,636 tickets, last ticket Mar 27 2026; do not create new tickets here
- Board (on-call): `PAYO` — Pay-OnCall — active

**Confluence:**
- Space: TBD — no dedicated payments space
- PROD space section: `Payments` — PM: Neeraj

**Key contacts:**
- PM owner: Abhishek Choudhari (VP Product)
- Payments: Neeraj
- Engineering (backend): Kartick, Ankita | Backend Manager: Mithun | Frontend: Pratap

**OKR context (JFM 2026):**
- PG integrations (RazorPay, PayU, Plural into Varuna): Jan 31
- Payments page configurability (instrument ordering, redemption, offers): Feb 28
- Cross-sell / EMI on payments page: Mar 31
- Tech/product debt reduction: Mar 31

**Key metric baselines:**
- New payments page CTR: >17% (vs ~10% baseline on old page)

**Skill routing notes:**
- Payments PRDs → PAYMENTS project (not PAY — PAY is the legacy board)

---

### P2P

**Product domain:** Peer-to-peer lending, borrower/lender onboarding, CIBIL bureau reporting, lender fee, compliance cleanup

**Jira:**
- Board: `P2P` — https://jupitermoney.atlassian.net/jira/software/projects/P2P/boards/274/timeline
- Issue types in use: Epic, Task, Story

**Confluence:**
- Space: TBD — add when discovered
- PROD space section: `P2P` — PM: Rohit Narayani (day-to-day: Abhyudaya Avasthi)

**Key contacts:**
- PM owner: Rohit Narayani
- Day-to-day PM: Abhyudaya Avasthi
- Engineering (backend): Ayush, Kuldeep, Akshit, Deepak | Backend Manager: Animesh | Frontend: Armaan
- Collections/Risk: Vikash Kumar, Srikanth R

**OKR context (JFM 2026):**
- P2P was flagged in OND OKRs as strategic. RBI gave new directions post-OOND. Re-alignment underway.
- CIBIL bureau reporting: P2P-1278 — In Progress
- Borrower/investor onboarding automation: P2P-1271/1272 — To Do
- Lender fee implementation: P2P-1132 — To Do
- Lender compliance cleanup: P2P-1137 — To Do

**Skill routing notes:**
- P2P PRDs → P2P project
- Abhyudaya is the day-to-day PM — escalate to Rohit Narayani / Abhishek for strategic decisions

---

### PFM (Personal Finance Management)

**Product domain:** AA-linked PFM, AI Money Copilot, cross-sell via PFM (loans, CC), PFM revenue, Copilot WAU, Account Aggregation

**Jira:**
- Board (primary): `PFM2` — active
- Board (on-call): `DPO` — DS-PFM-Oncall — active, high volume (44 tickets in 2 months)

**Confluence:**
- Space: `PFM` — https://jupitermoney.atlassian.net/wiki/spaces/PFM
- PROD space section: `PFM` — PM: Rasleen Kaur (includes Account Aggregation sub-section)

**Key contacts:**
- PM owner: Abhishek Choudhari (VP Product)
- PFM: Rasleen Kaur
- AA / PFM: Deekshant Khitoliya
- Engineering (backend): Abhi, Manu, Suraj | Backend Manager: Praveen | Frontend: Pratap

**OKR context (OOND 2025):**
- O8: AA-linked PFM enabled for ≥25% eligible users
- Copilot WAU ≥ 30% of PFM-enabled base
- Action-to-cross-sell conversion: 5% of enabled base by Dec 31
- PFM revenue: ₹2 Mn by end of Q3

---

### Investments

**Product domain:** Digital Gold, Mutual Funds (Regular + Direct), FD, SmallCase, XtraBoost, Bonds

**Jira:**
- Board (primary): `INV` — Investments — active
- Board (ops): `MFO` — Mutual Funds Operations — active

**Confluence:**
- Space: `MF` (Mutual Funds) — https://jupitermoney.atlassian.net/wiki/spaces/MF
- PROD space section: `Investments` — PM: Aayush M (day-to-day: Jitender Singh)

**Key contacts:**
- PM owner: Aayush M
- Day-to-day PM: Jitender Singh
- Engineering (backend): Keshav, Tushar, Verma (shared Eng Platform) | Backend Manager: Praveen | Frontend: Ranjit
- Analyst: Aayush Mishra, Rajat Jain

**OKR context (JFM 2026):**
- Net revenue: Jan >₹50L, Feb >₹70L, Mar >₹90L
- Digital Gold MTU: Jan >100K, Feb >150K, Mar >200K
- MF + XtraBoost MTU: Jan >50K, Feb >75K, Mar >100K
- FD MTU: Jan >25K, Feb >50K, Mar >75K
- New features: more FDs (Jan 15), Bonds (Mar 9), Regular MF (Feb 28), Magic Spends improvements (Jan 31)
- Tech debt reduction: Jan 31

---

### Insurance

**Product domain:** Health Top-up, Travel, Bike, Device, Personal Accident, inside sales, Chubb integration

**Jira:**
- Board (primary): `INSTECH` — Insurance Tech — active
- Board (on-call): `IO` — Insurance-OnCall — active

**Confluence:**
- Space: TBD — no dedicated insurance space
- PROD space section: `Insurance` — PM: Shyamratan Anaparthy (day-to-day: Akshat Garg)

**Key contacts:**
- PM owner: Shyamratan Anaparthy
- Day-to-day PM: Akshat Garg
- Business: Ravi NB, Shweta Das
- Engineering (backend): TBD | Backend Manager: TBD | Frontend: Chirag

**OKR context (JFM 2026):**
- Net revenue: Jan ₹1.25 Cr, Feb ₹1.45 Cr, Mar ₹1.65 Cr
- Chubb integration: Jan 12 (timeline needs revision)
- Intent-based inside sales for Health Top-up: Jan 12
- New products: Travel, Bike (aggregators), Device, Personal Accident
- Health Top-up partners: target 5 | Salary Protect: target 2

---

### PPI (Prepaid Instrument)

**Product domain:** Wallet (FKYC), Pots, Magic Spends, PayU integration, bill payments, compliance (RBI)

**Jira:**
- Board (primary): `PPIX` — Prepaid Instruments — canonical, 1209+ tickets, active as of Apr 2026
- Board (deprecated): `PPI` — older board (1003 tickets); do not create new tickets here
- Critical migration pending: PPI-1002 ("Block VPA handle on retool") — In Progress, move to PPIX

**Confluence:**
- Space: TBD — no dedicated PPI space
- PROD space section: `PPI` — PM: Rasleen Kaur

**Key contacts:**
- PM owner: Rasleen Kaur
- Day-to-day PM: Shivam Mistry
- Engineering (backend): TBD | Backend Manager: TBD | Frontend: Akhil
- Risk/Compliance: Ritik Tripathi, Balaji Rajendran

**OKR context (JFM 2026):**
- Monthly revenue: Jan ₹20L, Feb ₹35L, Mar ₹50L
- Daily Active Pots Balance >0: Jan >50K, Feb >75K, Mar >100K
- FKYC Active Carded Base: Jan >50K, Feb >80K, Mar >100K
- Zero RBI red flags
- Loss <₹10K/month from tech/ops/risk issues
- Magic Spends: Jan 31 | PayU integration: Feb 28 | Bill Payments: Jan 31

---

### Rewards & Rewards Commerce

**Product domain:** Flight bookings, e-Vouchers, Unicommerce store (EMI), airline miles, Rewards home page revamp, Bento layout, Atlys integration

**Jira:**
- Board (primary): `RECO` — Rewards & Commerce — active
- Board (ops): `REWARDOPS` — Rewards Offer Management and Ops — active

**Confluence:**
- Space: `GE` (Growth and Engagement) — https://jupitermoney.atlassian.net/wiki/spaces/GE
- PROD space section: `Rewards & Ecommerce` — PM: Shyamratan Anaparthy

**Key contacts:**
- PM owner: Shyamratan Anaparthy
- Business: Christo Francis, Ravi NB
- Engineering (backend): TBD | Backend Manager: TBD | Frontend: TBD

**OKR context (JFM 2026):**
- Flight bookings: Jan ₹15 Mn, Feb ₹20 Mn, Mar ₹25 Mn
- e-Voucher sales: Jan ₹20 Mn, Feb ₹25 Mn, Mar ₹30 Mn
- Unicommerce store: Feb >₹5 Mn, Mar >₹10 Mn
- Rewards cost: -5% MoM (baseline Dec)
- Unicommerce EMI: Jan 21
- Rewards home page revamp: Feb 9
- Airlines sign-up (miles content): Jan 31
- Atlys integration: Feb 27

---

### CS & CS Tech

**Product domain:** Realtime ticket tracking, social media escalations, 7-day priority support, in-app inbox, AI chat agent, AI voice agent, WA nudges, Customer Experience desk

**Jira:**
- Board (tech): `CSCX` — CS/CX Tech — active
- Board (chatbot/IVR): `CIR` — Chatbot and IVR Revamp — active
- Board (corp users): `CUIT` — Corporate Users Issue Tracker — active
- Board (FD escalations): `FDPT` — FD Escalated Tickets Product & Tech — very high volume (92 tickets in 2 months)
- Board (mgmt escalations): `ME` — Management Escalations — active
- Board (founder feedback): `FTF` — Feedback to Founder — active

**Confluence:**
- Space: `AE` (Agent Experience) — https://jupitermoney.atlassian.net/wiki/spaces/AE
- PROD space section: `Customer Experience` — PM: Anand G

**Key contacts:**
- PM owner: Anand G
- CS head: Samanta Supriya, Vinay Gupta
- Product (AI/CS tech): Mohit Gupta, Shitiz Kumar (AI)
- Engineering (backend): Dinesh, Shrijan, Parth | Backend Manager: Mithun | Frontend: Priyanshu

---

### Growth & Marketing

**Product domain:** Acquisition campaigns, cross-sell, referral growth, engagement, DSA attribution

**Jira:**
- Board: `GT` — Growth — CC, PPI, SA — active
- Board: `YOUT` — Youtube (marketing content tracking) — active

**Confluence:**
- Space: `MAR` (Marketing) — https://jupitermoney.atlassian.net/wiki/spaces/MAR
- PROD space section: `Growth` — PM: Lakshya Sharma

**Key contacts:**
- PM owner: Lakshya Sharma
- Marketing: Adityan K
- Alliances / Affiliates: Rashi Kumari

---

### Platform, Infra & Security

**Jira:**
- `DEV` — Devops — active, high volume
- `IT` — ITOPS — active
- `FP` — Frontend-Platform — active
- `DSP` — Deso Sprint Plan (data engineering) — active
- `COST` — Devops Cost — active
- `WEB` — Website — active
- `DSDP` — Data-Platform — active
- `OE` — Operational Excellence — active
- `SERP` — Security Review Program — active
- `SCVLN` — SecVuln — active
- `PSEC` — Product Security — active
- `AUD` — Audience Manager — active

**Engineering:**
- Backend (Eng Platform): Keshav, Tushar, Verma | Backend Manager: Praveen | Frontend: Ranjit
- AI Charter & Data Platform: Backend: Vaibhav, Ritesh | Backend Manager: Animesh

---

### Deprecated / Noise — do not create tickets here

| Key | Name | Canonical replacement | Critical migration pending |
|---|---|---|---|
| `L20` | Loans | `PLZ` | None (last 2 bugs are Done) |
| `LENPRODUCT` | Lending Product | `PLZ` | LENPRODUCT-200 — repayment events |
| `CCP` | Credit Cards Product & Growth | `CCZ` | None |
| `CCT` | Credit Cards Tech | `CCZ` | None |
| `PAY` | Payments (legacy) | `PAYMENTS` | PAY-13398 (DCMS deprecation — In Dev), PAY-13218 (ElastiCache PCI cluster — In Testing) |
| `PPI` | Prepaid Instruments | `PPIX` | PPI-1002 — block VPA handle (In Progress) |
| `ACT` | Abhi-Claude-Test | — | Ignore |
| `AUTO` | Automation | — | Test automation — noise |
| `BBQ3` | Bug Bash Q3 2022 | — | Archived event |

---

## Org-wide Contacts

| Name | Role | Area |
|---|---|---|
| Abhishek Choudhari | VP Product & Design | Banking, Lending, CC, Payments, P2P |
| Rohit Pandey (RKP) | President | All LoBs |
| Jitendra Gupta (Jiten) | CEO | Company |
| Apekshit Sharma | Engineering (Platform) | All products |
| Animesh Mishra | Engineering (Infra/Cloud) | All products |
| Vikash Kumar | Risk & Collections | Lending, CC |
| Balaji Rajendran | Legal & Compliance | All products |
| Sushil Gogri | Finance Ops / Reconciliation | All products |
| Tanuj Agarwal / Lavesh Mola | Finance (reporting) | Weekly + fortnightly MIS |
| Adityan K | Growth / Marketing | CC, SA |
| Rashi Kumari | Alliances / Affiliates | Metal Card, CC, SA |
| Rajat Jain | Analytics | All LoBs |
| Ishu Kumar | ML / Data Science | Lending, CC, cross-sell |
| Sparsh | PM — OB & Activation, Homescreen | OB, Homescreen |
| Aayush M | PM — Savings Account, Investments | SA, Investments |
| Rohit Narayani | PM — Lending + P2P | Personal Loans, P2P |
| Neeraj | PM — Payments | Payments |
| Urjaswit Lal | PM — Banking (PRO, Aurora) | SA PRO, Metal Card |
| Pratham Patidar | PM — Banking | SA non-salaried |
| Akhilesh Jha | PM — Salary / B2B | Salary accounts |
| Deekshant Khitoliya | PM — PFM | PFM, AA |
| Lakshya Sharma | PM — Growth | Acquisition, Cross-sell, Campaigns |
| Jitender Singh | PM — Investments (day-to-day) | Gold, MF, FD |
| Akshat Garg | PM — Insurance (day-to-day) | All insurance |
| Shivam Mistry | PM — PPI (day-to-day) | Wallet, Pots |
| Rasleen Kaur | PM — PPI + PFM | PPI, PFM |
| Shipra Chandra | PM — Credit Cards | CC growth, SAU |
| Shyamratan Anaparthy | PM — Rewards & Ecommerce + Insurance | Commerce, flights, insurance |
| Abhyudaya Avasthi | PM — P2P (day-to-day) | P2P (under Rohit Narayani) |
| Anand G | Customer Experience | CS agents, self-serve, CX tech |
| Anand Sinha | Business — CC / Lending | CC P&L, partnerships |
| Ravi NB | Business — Insurance / Alliances | Insurance, rewards |

---

## Partner / External Dependencies

| Partner | Domain | Key contacts at partner |
|---|---|---|
| Federal Bank | SA, Metal Card, VKYC, Salary | AKHILESH PM (FINT), PRAVEEN PAI R (IT), RESHMA RAJ (IT) |
| CSB Bank | Credit Cards (Edge+, Mastercard, Secured) | Tejeswini, Shyam (Mastercard CPV) |
| KSF | Lending (co-lending) | Mahesh Lotankar (ops escalations) |
| Finsall | Lending | Open exceptions tracked separately |
| KB (Kissht/KreditBee) | Lending | Co-lending partner |
| HyperVerge | VKYC | Active integration for SA |
| VideoCX | VKYC for Lending/CC | Currently blocked |
| MoneyTor | CRM for telecalling | In Dev (PLZ — migrated from L20) |
| Chubb | Insurance | Timeline needs revision |
| RazorPay / PayU / Plural | Payments (PG into Varuna) | Internal via Neeraj |
| NPCI | CC (UPI Autopay, Mastercard) | CCZ-148 In Progress |

---

## Skill Routing Guide

| Skill | Default project | Who to loop in |
|---|---|---|
| `create-prd` | Depends on feature area — ask if unclear | PM owner for that team (see team map above) |
| `prd-to-epics` | Same project as PRD | PM and engineering lead for that team |
| `expert-pm-tracker` | All active product boards: BO, CCZ, PLZ, P2P, PAYMENTS, PFM2, INV, INSTECH, PPIX, RECO, CSCX, GT | Use Abhishek's account ID: `712020:ea278dbc-00eb-498f-81c1-8f7eeaa19f08` |
| `plan-okrs` | N/A (strategic) | Load OKR context from relevant team section above |
| `stakeholder-update` | N/A (comms) | Load contacts from relevant team section above |
| `write-stories` | Same project as Epic | PM and engineering lead for that team |
| `quarterly-planning` | All boards | Load all team OKR contexts above |
| `analyze-test` / `ab-test-analysis` | N/A | Use Amplitude (Jupiter project) |

**Mandatory fields when creating Jira Epics at Jupiter:**
- Impact (quantified)
- PRD committed date
- Go-live / delivery date
- PM owner
- Engineering owner

---

## How to Extend This File

**When a new OKR cycle starts:** Add a new `OKR context (cycle name)` block under each team. Keep the previous cycle for reference.

**When a new PM or engineer joins:** Add them to Key contacts for that team and to the org-wide contacts table.

**When engineering pod structure changes:** Update the Engineering Structure table at the top and the relevant team's Key contacts section.

**When a new board is discovered:** Add the board URL under the relevant team's Jira section.

**When a metric baseline is confirmed:** Add it to the Key metric baselines block for that team.
