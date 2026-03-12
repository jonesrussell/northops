# M1: Pricing Model — NorthOps

> Unified pricing framework across 4 service lines, 3 client segments, and 3 engagement models.
> Priority: get to revenue fast. First engagements use a simple SOW + e-transfer (Option A).

---

## Engagement Models

### 1. Fixed-Price MVP

**Description:** A defined scope of work with a fixed price, delivered in a set number of days. Client pays a fixed amount for a specific deliverable.

**When to use it:** First engagements, small well-scoped projects, DevOps sprints, single-feature builds. Best for Startups Without DevOps and Agency Overflow segments.

**Pros:** Easy to sell (client knows the cost upfront), fast to close, low commitment for both sides.
**Risks:** Scope creep if requirements aren't locked. Mitigate by defining explicit deliverables and out-of-scope items in the SOW.

**Price structure:** Calculated as `[days] × [daily rate]`. Daily rate: CAD $1,200–$1,440 (standard) or CAD $1,560–$1,872 (AI premium).
`Assumption: Standard daily rate = $150/hr × 8h = CAD $1,200/day. Upper range = $180/hr × 8h = CAD $1,440/day.`

**Delivery window:** 3–10 business days depending on scope.

---

### 2. Sprint

**Description:** A time-boxed engagement (typically 1–2 weeks) where one or both founders work on a defined problem area. Deliverables are scoped at sprint start, not pre-fixed.

**When to use it:** Exploratory work, architecture reviews, legacy modernization, multi-feature builds. Best for Agency Overflow and SMBs Adding AI segments.

**Pros:** Flexible scope within a fixed time commitment. Client gets senior attention for a defined period.
**Risks:** Less predictable output than fixed-price. Mitigate with daily standups and a clear sprint goal.

**Price structure:** CAD $6,000–$7,200 per week (1 founder) or CAD $12,000–$14,400 per week (2 founders).
`Assumption: 1 founder × 5 days × CAD $1,200–$1,440/day = CAD $6,000–$7,200/week.`

**Delivery window:** 1–2 weeks per sprint.

---

### 3. Retainer

**Description:** Ongoing weekly or monthly allocation of senior engineering hours. Client reserves a set number of days per week/month at a slightly discounted rate.

**When to use it:** Ongoing agency overflow, long-running projects, clients who need guaranteed availability. Best for Agency Overflow segment after initial engagement.

**Pros:** Predictable revenue for NorthOps, guaranteed availability for client, builds long-term relationship.
**Risks:** Opportunity cost if retainer hours go unused. Mitigate with a minimum 2-week commitment and unused-hours policy (hours don't roll over).

**Price structure:** CAD $4,800–$5,760 per week (4 days/week, 1 founder) with a 5–10% discount off standard daily rate for commitments of 4+ weeks.
`Assumption: 4 days/week × CAD $1,200/day = CAD $4,800/week standard. 10% discount = CAD $1,080/day × 4 = CAD $4,320/week.`

**Delivery window:** Minimum 2-week commitment. Monthly renewals.

---

## Pricing Anchors & Assumptions

| Anchor | Value | Derivation |
|--------|-------|------------|
| Hourly rate (standard) | CAD $120–200/hr | Market range for senior engineering in Canada |
| Daily rate (anchor) | CAD $1,200/day | $150/hr × 8h = $1,200 |
| Daily rate (upper) | CAD $1,440/day | $180/hr × 8h = $1,440 |
| Daily rate (AI premium) | CAD $1,560–$1,872/day | Base + 30% premium |
| Weekly rate (1 founder) | CAD $6,000–$7,200/week | 5 days × $1,200–$1,440 |
| Weekly rate (2 founders) | CAD $12,000–$14,400/week | 2 × weekly rate |

`Assumption: All rates are CAD. Standard anchor is $150/hr × 8h = $1,200/day. AI premium applies +10–30% to base daily rate.`

**When to use which rate:**
- **$120–150/hr ($960–$1,200/day):** Retainer clients with 4+ week commitments, straightforward work
- **$150–180/hr ($1,200–$1,440/day):** Standard engagements, fixed-price MVPs, sprints
- **$180–200/hr ($1,440–$1,600/day):** Urgent work, specialized architecture, short-notice requests
- **$195–260/hr ($1,560–$2,080/day):** AI Engineering (base rate + 30% premium)

`Assumption: AI premium range = $150–200/hr × 1.3 = $195–260/hr.`

---

## Service Line Pricing Tables

### Web Application Engineering

| MVP Scope | Delivery (days) | Price Range (CAD) | Assumptions |
|-----------|----------------|-------------------|-------------|
| Single-feature module (admin panel, portal, API set) | 5 | $6,000–$7,200 | 5 days × $1,200–$1,440/day |
| Full application build (multi-feature, both founders) | 10 | $12,000–$14,400 | 10 days × $1,200–$1,440/day (1 founder) |
| Legacy modernization sprint (1 week) | 5 | $6,000–$7,200 | 5 days × $1,200–$1,440/day |

### Content & Data Pipelines

| MVP Scope | Delivery (days) | Price Range (CAD) | Assumptions |
|-----------|----------------|-------------------|-------------|
| Single pipeline (one source, one target) | 4 | $4,800–$5,760 | 4 days × $1,200–$1,440/day |
| CMS migration (platform A → platform B) | 5–8 | $6,000–$11,520 | 5–8 days × $1,200–$1,440/day |
| Content architecture review | 2 | $2,400–$2,880 | 2 days × $1,200–$1,440/day |

### DevOps & CI/CD

| MVP Scope | Delivery (days) | Price Range (CAD) | Assumptions |
|-----------|----------------|-------------------|-------------|
| CI/CD pipeline + server provisioning (1 project) | 3 | $3,600–$4,320 | 3 days × $1,200–$1,440/day |
| Docker/IaC setup | 2–3 | $2,400–$4,320 | 2–3 days × $1,200–$1,440/day |
| Platform architecture review | 2 | $2,400–$2,880 | 2 days × $1,200–$1,440/day |

### AI Engineering

| MVP Scope | Delivery (days) | Price Range (CAD) | Assumptions |
|-----------|----------------|-------------------|-------------|
| Single AI feature (RAG, summarization, agent) | 5 | $7,800–$9,360 | 5 days × $1,560–$1,872/day (base + 30% AI premium) |
| AI feasibility assessment | 1 | $1,560–$1,872 | 1 day × $1,560–$1,872/day |
| AI workflow automation | 3–5 | $4,680–$9,360 | 3–5 days × $1,560–$1,872/day |

---

## First Engagement Path (Option A)

For the first 1–2 clients, use a lightweight process to close fast.

### Step-by-Step Flow

1. **Discovery call** (free, 15–30 minutes) — understand the problem, confirm fit, estimate scope
2. **Write a simple SOW** (1–2 pages) containing:
   - Project name and client name
   - Scope: explicit list of deliverables (what's included)
   - Out of scope: explicit list of what's not included
   - Timeline: start date, delivery date
   - Price: fixed amount in CAD
   - Payment terms: 50% upfront via e-transfer before work begins, 50% on delivery
   - Acceptance criteria: what "done" means
   - Revisions: 1 round of revisions included; additional at hourly rate
3. **Send SOW via email** — client replies with "approved" or signs a PDF
4. **Receive 50% deposit via e-transfer** — do not start work until deposit clears
5. **Deliver the work** — push to client's repo or hand off via agreed method
6. **Client confirms acceptance** — based on acceptance criteria in SOW
7. **Receive remaining 50% via e-transfer**
8. **Send a simple invoice** (PDF or plain email) for record-keeping

### When to Transition to Full MSA/SOW (Option B)

Switch to a full MSA + SOW after:
- The first 2 paid engagements are complete, OR
- Any single engagement exceeds CAD $15,000, OR
- The client requests formal contracts, OR
- The engagement involves sensitive data, IP ownership questions, or subcontracting

---

## AI Premium Rules

- AI Engineering work (LLM integration, RAG, embeddings, agent workflows) is billed at a **30% premium** over standard rates
- Premium reflects: specialized skills, higher market demand, and additional complexity of production AI work
- Premium applies to Luc's AI-specific work only; if Russell provides supporting infrastructure (e.g., pipeline for AI data), his hours are billed at standard rate
- Discovery calls and feasibility assessments for AI work also use the premium rate

**Standard rate:** CAD $1,200–$1,440/day
**AI premium rate:** CAD $1,560–$1,872/day
`Assumption: $1,200 × 1.3 = $1,560 (low); $1,440 × 1.3 = $1,872 (high)`

---

## Discovery Call Option (Optional C)

**Price:** CAD $200–$300 (1 hour)
`Assumption: $200–$300/hr for a focused 1-hour session. Standard hourly range: $150–200/hr + rounding for standalone sessions.`

**Script (30–60 words):**
"We offer a paid 1-hour discovery call where we review your current setup, identify the highest-impact improvement, and give you a concrete recommendation — whether or not you hire us. You'll leave with a written summary of what to fix first and an estimate if you want us to do the work."

**When to offer it:**
- Client is interested but not ready to commit to a full engagement
- Scope is unclear and needs a focused assessment before quoting
- Client has asked "can you just look at it and tell me what to do?"

**When NOT to offer it:**
- Client already has a clear scope and is ready for a fixed-price MVP (go straight to SOW)
- The discovery call is effectively a sales call (keep it free)

---

## When to Use Full MSA/SOW (Option B)

After the first 1–2 lightweight engagements, transition to full contracts:

- **Master Services Agreement (MSA):** Covers the ongoing relationship — IP ownership, confidentiality, liability, termination, dispute resolution. Signed once, covers all future work.
- **Statement of Work (SOW):** Covers a specific engagement — scope, deliverables, timeline, price, acceptance criteria. One SOW per project, referencing the MSA.

**Trigger points for switching to Option B:**
- First 2 paid engagements are complete (relationship established, time to formalize)
- Any engagement exceeds CAD $15,000
- Client requests formal contracts
- Work involves sensitive data, regulated industries, or IP assignment
- Subcontracting or third-party involvement

**Templates:** See `contracts/msa-template.md` and `contracts/sow-template.md` in the ops repo (M4).
