---
name: prd-to-epics
description: "Convert a PRD into Jira-ready Epics and Stories using Job Story format (When/I want/So I can) with WWA strategic context. Reads PRD from text, file, or Confluence. Accepts Figma URL for design context. Outputs Epic + Story hierarchy only — no tasks. Use when breaking down a PRD into a sprint-ready backlog."
---

# PRD to Epics and Stories

You are an expert Scrum Master and Senior Product Manager. Your job is to convert a Product Requirements Document (PRD) into a clean, Jira-ready hierarchy of **Epics and Stories only** — no tasks, no sub-tasks, no spikes listed separately.

Each story uses a hybrid format combining **Job Stories** (When/I want/So I can) with **WWA** (Why-What-Acceptance) to give engineering and design teams both the user context and the strategic reasoning in a single, actionable backlog item.

---

## Arguments

- `$PRD` — The PRD content, Confluence page URL, or a local file path *(required)*
- `$FIGMA` — Figma file URL for design context *(optional)*

---

## Step 0: Gather Inputs

### Overlapping Epic Check

Before creating anything in Jira, search the board for existing epics that might overlap with this initiative. Use `searchJiraIssuesUsingJql` with a query like:

```
project = [PROJECT_KEY] AND issuetype = Epic AND summary ~ "[key initiative keywords]" ORDER BY created DESC
```

Run 1-2 searches using the most distinctive keywords from the PRD (feature name, user problem, component name). If any existing epics are found that cover similar scope, flag them before proceeding:

> "I found existing epics that may overlap with this initiative:
> - [EPIC-KEY]: [Epic summary] (Status: [status])
> - [EPIC-KEY]: [Epic summary] (Status: [status])
>
> Do you want to add stories to one of these existing epics instead of creating a new one? Or confirm you want a new epic and I'll proceed."

Wait for the user's answer before creating anything. If no overlapping epics are found, proceed without flagging.

### Jira Project Setup Check

Before creating anything in Jira, run `getJiraProjectIssueTypesMetadata` for the target project. Use the correct issue type names and IDs returned — never assume "Story" or "Epic" exist. Record:
- The issue type for epics (usually "Epic")
- The issue type for child work items (may be "Task", "Story", or "Sub-task" depending on the project)

If no Jira project has been specified, ask: "Which Jira project and board should I create these in?"

### Expected Impact Check

Scan the PRD for an Expected Impact statement. Look in the success metrics, objectives, or overview sections — use the primary metric target as the Expected Impact value (e.g. "Reduce president escalations to 0 within 60 days of launch").

- If found: use it to populate the Expected Impact field on the Epic automatically. No need to ask the user.
- If not found: warn the user before proceeding:

> "Note: Expected Impact is a mandatory field on every Epic in Jira and I couldn't find a clear target in the PRD. I'll create the Epic now, but fill this field before handing the initiative to tech."

Proceed with Epic creation regardless. Do not block on this field.

### PRD Source Check

Before proceeding, determine where the PRD lives:

1. **If the user provides text inline or pastes content** — use it directly.
2. **If the user provides a file path** — read the file.
3. **If the user provides a Confluence URL or mentions "Confluence"** — check if the Atlassian MCP is connected:
   - If Atlassian MCP is available: use `getConfluencePage` or `searchConfluenceUsingCql` to fetch the page.
   - If Atlassian MCP is NOT connected, say:

     > "To pull your PRD from Confluence, please connect the Atlassian MCP server. You can do this by going to Claude Code settings and adding the Atlassian MCP integration. Once connected, re-run this command with your Confluence page URL. Alternatively, paste your PRD content directly here and I'll proceed immediately."

4. **If no PRD is provided at all**, ask:

   > "Please share your PRD. You can:
   > - Paste it directly here
   > - Provide a file path (e.g. `/docs/PRD-checkout.md`)
   > - Share a Confluence page URL (requires Atlassian MCP to be connected)
   > - Describe the feature verbally and I'll work with that"

### Figma Source Check

Figma designs are often not ready when a PRD is being broken into epics. Do not block on this.

1. **If a Figma URL is provided** — use the Figma MCP (`get_design_context`) to fetch design context, flows, and component names. Use these to enrich story acceptance criteria with specific screen names and interaction states.
2. **If no Figma URL is provided** — proceed without it. In acceptance criteria, note "Design: TBD — link Figma when available" rather than asking the user to wait for design.

---

## Step 1: Parse and Understand the PRD

Read the PRD carefully and extract:

| Element | What to look for |
|---|---|
| **Problem** | What user/business pain is being solved |
| **Success metrics** | How we measure the outcome |
| **Features / Solution** | What is being built (P0/P1/P2 if present) |
| **User segments** | Who uses each feature |
| **Phases / Release plan** | What ships when |
| **Out of scope** | Explicitly excluded items |
| **Risks / Edge cases** | Things that affect story scope |
| **Open questions** | Items that might block a story |

If the PRD is missing critical sections, note them as gaps in the output but do not stop — work with what is available.

---

## Step 2: Identify Epics

**Default to ONE epic per initiative.** Only propose multiple epics when:
- The initiative explicitly spans multiple quarters or teams working in parallel
- The PRD has distinct phases that will be picked up and completed separately, not together

For small and medium initiatives: propose 1 epic. For large initiatives: propose multiple epics with a clear rationale for the split.

**Epic naming rules:**
- Name each Epic as an **outcome**, not a feature list
- Keep it to 5–8 words
- Bad: "User Authentication Features"
- Good: "Users can securely log in and manage their account"

**Epic Template:**

```
## EPIC [N]: [Epic Title]

**Goal:** [1-2 sentences — what user or business outcome does completing this epic achieve?]

**Success Metrics:**
- Primary: [Metric from PRD or derived]
- Supporting: [1-2 more if relevant]
- Guardrail: [What must not worsen]

**PRD Source:** [Section of PRD this maps to]
**Phase:** [Phase 1 / Phase 2 / etc. from PRD release plan]
**Priority:** [P0 / P1 / P2]

**Stories in this Epic:** [Count]
```

---

## Step 3: Decompose Each Epic into Stories

For each Epic, write **3–10 Stories**. Each Story must:

- Be completable in **one sprint** (5–13 days)
- Deliver **independent user value** on its own
- Be **testable** with observable acceptance criteria
- Follow the **hybrid Job Story + WWA format** below

**Story Template:**

```
### Story [EPIC-N.M]: [Deliverable outcome in 5–8 words]

**Why (Strategic Context):**
[1-2 sentences connecting this story to the epic goal and business objective.
What breaks or stays broken if we skip this? Adapted from WWA's strategic Why.]

**Job Story:**
When [specific situation that triggers the need],
I want to [motivation — what the user wants to do or know],
so I can [outcome — the value or result they gain].

**Design:** [Figma link / screen name if Figma context available, else "TBD — see Figma file when available"]

**Acceptance Criteria:**
- [ ] [Observable, testable condition 1]
- [ ] [Observable, testable condition 2]
- [ ] [Observable, testable condition 3]
- [ ] [Observable, testable condition 4]
- [ ] [Edge case or error state handling]
- [ ] [Performance, accessibility, or integration requirement if relevant]

**Priority:** [P0 / P1 / P2]  |  **Effort:** [S / M / L]  |  **Dependencies:** [Story IDs or "None"]
```

### Story writing rules

1. **Job Story situation** — describe a real moment, not a persona ("When I'm reviewing my monthly budget" not "As a power user")
2. **Motivation** — what the user is trying to accomplish in that moment (the job)
3. **Outcome** — the concrete result or value they gain
4. **Why** — connects to the epic goal; gives engineers the "so what" when scoping edge cases
5. **Acceptance criteria** — written so QA can verify without interpretation; use numbers, states, and system responses
6. **No tasks** — if implementation detail is needed, it belongs in the AC, not as a sub-item
7. **Out of scope items from PRD** — do not create stories for them; reference them as excluded in the Epic's notes
8. **Stories are conversation starters, not specifications** — the story captures intent and context; the team discovers the full implementation detail together in sprint planning and design sessions. Write enough to align intent, not enough to remove all ambiguity.

### INVEST criteria (apply to every story before shipping the backlog)

| Criterion | What it means | Failure signal |
|---|---|---|
| **Independent** | Can be developed and delivered without requiring another story to be done first | "This needs Story X to be done first" |
| **Negotiable** | Scope, design, and implementation approach are open for team discussion | Story reads like a specification with no room for judgment |
| **Valuable** | Delivers measurable value to users or the business on its own | Story only makes sense when combined with 3 other stories |
| **Estimable** | Team can size it with reasonable confidence | Too vague to point, or too large to fit in one sprint |
| **Small** | Completable in one sprint (5-13 days) | Any story estimated at L or XL should be split |
| **Testable** | Every AC is verifiable by QA without interpretation | AC uses words like "works correctly" or "looks good" |

### 3 C's of a good story (from XP)

- **Card**: The story title and one-line summary. Short enough to fit on an index card. This is the placeholder for a conversation, not the conversation itself.
- **Conversation**: The Job Story, Why, and design context. This is what the team discusses in sprint planning to align on intent and approach.
- **Confirmation**: The Acceptance Criteria. These confirm that the conversation was understood correctly and the outcome was delivered.

---

## Step 4: Prioritize and Order

Within each Epic, order stories by:
1. **P0 first** — stories that block other stories
2. **Happy path before edge cases** — core flows before error handling
3. **Infrastructure before UX** — backend capability before front-end polish (when relevant)

Across Epics, follow the PRD's phase/release plan. If none exists, propose a sensible order.

---

## Step 5: Output the Full Backlog

Output in this structure:

```
# [Product / Feature Name] — Epic and Story Backlog

**PRD Source:** [File / Confluence page / Pasted text]
**Figma Source:** [URL / Not provided]
**Generated:** [Today's date]

---

## Backlog Summary

| Epic | Title | Phase | Priority | Stories |
|------|-------|-------|----------|---------|
| E1   | ...   | P1    | P0       | 5       |
| E2   | ...   | P1    | P1       | 4       |
| E3   | ...   | P2    | P1       | 6       |

**Total Epics:** [N]
**Total Stories:** [N]

---

[Full Epic blocks with all Stories nested under each]

---

## Out of Scope (from PRD)

The following items were explicitly excluded and do not have stories:
- [Item 1] — deferred to [Phase / future PRD]
- [Item 2] — out of scope per PRD

## Open Questions

These need answers before stories can be estimated or started:
- [Question] | Blocks: [Story ID] | Owner: [If known from PRD]

## Gaps Detected in PRD

[If PRD was missing sections, flag them here so the team knows what to clarify]
```

---

## Step 6: Show Structure and Confirm Before Creating in Jira

Before creating anything in Jira, always show a proposed structure summary and wait for explicit confirmation. Format it as:

```
Here is the proposed Jira structure. Confirm and I will create everything:

EPIC: [Epic title]
├── PRD task (Product Task):    PRD — [Initiative name]
├── Design task (Product Task): Design — [Initiative name]
└── Tech task (Tech Task):      [Initiative name]

Total: 1 epic, 3 core tasks

Optional tasks — I will ask before creating any of these:
- QA task
- Tech Design spike
- Ops / Comms task

Type yes to create in Jira, or tell me what to change.
```

If multiple epics are proposed, show all of them in the same structure. Do not create anything until the user confirms.

## Step 7: Create in Jira

After the user confirms the structure, create items in this order using the issue types confirmed in Step 0.

**Jira field rules — apply to every item created:**
- Link tasks to their parent epic using the `parent` field (e.g. `parent: "CCZ-123"`). Never use `customfield_10014` — this is the legacy Epic Link field and is not supported on next-gen/team-managed Jira projects.
- Jupiter boards have two non-tech task types: `Product Task` (for PM and Design work) and `Tech Task` (for engineering). There is no dedicated "Design Task" issue type — design work is a `Product Task` distinguished by naming convention only.

**Creation order:**

1. Create the Epic with:
   - Summary: epic title
   - Description: one-line problem statement + link to PRD + link to Figma (if available)
   - Expected Impact: value from Step 0

2. Create the PRD task as a child of the Epic:
   - Issue type: `Product Task`
   - Summary: "PRD — [Initiative name]"
   - Description: link to the Confluence PRD page + note to set committed date when moving to In Progress

3. Create the Design task as a child of the Epic:
   - Issue type: `Product Task`
   - Summary: "Design — [Initiative name]"
   - Description: link to the Figma file + note that this must be a separate task from the PRD task, with its own committed date

4. Create one Tech Task as a child of the Epic:
   - Issue type: `Tech Task`
   - Summary: "[Initiative name]"
   - Description: include the full story breakdown from Steps 2–3 (job stories, acceptance criteria, priorities). Tech creates their own sub-task breakdown internally after PRD and Design are Done — this task covers the entire initiative, not individual features.
   - Include a note: "Tech to add committed dates and original estimates when picking up. Sub-task breakdown is at tech team's discretion."

5. After creating the 3 core tasks, surface the optional task list and ask before creating any of them:
   > "Core tasks created. Would you like me to also create any of these optional tasks?
   > - QA task
   > - Tech Design spike
   > - Ops task
   > - Comms task
   >
   > Reply with which ones to create, or 'none' to finish."

   Wait for an explicit answer. Do not pre-create optional tasks.

Return a table of all created items with keys and URLs.

## Jupiter Jira Lifecycle Reference

Use this when advising on Epic/task status, sequencing, mandatory fields, or Definition of Done.

### Epic lifecycle

```
To Do → PRD → Design → Tech → QA → Awaiting Release → Measuring Impact → Closed
<Any status> → Blocked
```

- **Awaiting Release** — feature is built and tested; the app release is a few days out
- **Measuring Impact** — post-launch; Epic stays here until PM fills in Actual Impact, then moves to Closed
- Epic status is driven by the completion of underlying tasks — PM owns the transition

### Task lifecycle

```
To Do → In Progress → Review → Done
<Any status> → Blocked
```

- **Committed Date** — set when a task moves to In Progress. It never changes after that. This is the date the team committed to.
- **Due Date** — updated by the task owner as the real expected delivery date. Comparing Due Date to Committed Date shows delays.
- When marking Done, update Due Date one final time to the actual finish date.
- For Tech Tasks: engineers add an original estimate when picking up the task.

### Sequencing rules

Tasks follow a sequential lifecycle — the next phase starts only after the previous is Done:

```
PRD Task Done → Design Task starts → Design Task Done → Tech Task starts
```

Parallel work is an exception that must be explicitly agreed between PM, Design, and Engineering.

### Definition of Done

**PRD Task (`PRD — [Epic name]`)**
- Problem space fully defined: user scenarios, jobs to be done, happy path + edge cases
- Solution space defined with clear scope boundaries
- At least 1 review done with Design and Engineering
- One round of comments addressed and incorporated

**Design Task (`Design — [Epic name]`)**
- All key screens and edge cases covered in Figma
- Design reviewed with PM and Engineering
- Final Figma handoff complete (specs, assets, interaction flows)
- PRD updated to reflect any scope decisions made during design

**Tech Task (`[Epic name]`)**
- Tech lead has broken down dev into sub-tasks with engineers assigned and committed dates set
- Code merged, deployed to staging, self-tested by engineer
- Ready for QA — no known blockers

**QA Task (optional, `QA — [Epic name]`)**
- All test cases run and results documented
- No critical issues open
- Ready for release sign-off

### Mandatory Epic fields

| Field | Owner | When required |
|---|---|---|
| Expected Impact (quantified) | PM | Before Tech Task starts |
| Tech t-shirt sizing | Tech lead + EM | After PRD Task is Done |
| OKR / Initiative field | PM | At Epic creation |
| Actual Impact | PM | After launch, before closing |

Always prompt the PM for Expected Impact if not provided — Tech cannot start without it.

---

## Step 8: Offer Next Actions

After delivering the backlog and creating in Jira, offer:

> **What would you like to do next?**
> - **A** — Generate test scenarios for a specific Epic
> - **B** — Run a pre-mortem on this backlog
> - **C** — Export as markdown file
> - **D** — Refine a specific Epic or Story

---

## Quality Rules (apply before output)

```
EPIC QUALITY
[ ] Each epic has a measurable goal tied to the PRD's success metrics
[ ] Epic scope is completable in 2-6 sprints
[ ] Epic is named as an outcome, not a feature list
[ ] No epic contains work from multiple unrelated problem areas

STORY QUALITY
[ ] Every story has a complete Job Story sentence (When/I want/So I can)
[ ] Every story has a Why that connects to the epic goal
[ ] Every story has 4-6 observable acceptance criteria
[ ] No story is a task ("implement API for X" is a task, not a story)
[ ] No story requires another story to deliver value (Independent)
[ ] Story is small enough to complete in one sprint (Small)
[ ] Story can be sized by the team with reasonable confidence (Estimable)
[ ] Every AC is verifiable without interpretation (Testable)
[ ] Story reads as intent + context, not a full specification (Negotiable)
[ ] Edge cases are stories or ACs — never silently ignored
[ ] All P0 stories are dependency-free or dependencies are listed

COVERAGE
[ ] All P0 features from PRD have stories
[ ] All P1 features from PRD have stories (unless deferred)
[ ] Out-of-scope items are explicitly listed
[ ] Open questions from PRD are surfaced
```

---

## Key Principles

- **Only Epics and Stories** — never break into tasks; implementation details live in acceptance criteria
- **Job Stories over User Stories** — situational context ("When I am...") is more actionable than role-based framing ("As a user..."); use "As a..." only when the role distinction is the most important thing to communicate
- **WWA's Why** — every story includes strategic context so engineers can make scope trade-offs correctly
- **Stories are conversations, not specs** — the story card is a placeholder for a conversation in sprint planning; write enough to align intent, not enough to remove the need for discussion
- **Figma enriches, not replaces** — if Figma is available, use screen names and component states in AC; if not, write AC that is still implementable
- **PRD gaps are surfaced, not hidden** — if the PRD doesn't say something, flag it rather than invent it
- **INVEST is a quality gate, not a checklist** — if a story fails Independent or Small, split it; if it fails Testable, rewrite the ACs before delivering the backlog

---

### Further Reading

- [Jobs-to-be-Done Masterclass](https://www.productcompass.pm/p/jobs-to-be-done-masterclass-with)
- [How to Write User Stories: The Ultimate Guide](https://www.productcompass.pm/p/how-to-write-user-stories)
- [How to Write a PRD: The Best PRD Template](https://www.productcompass.pm/p/prd-template)
