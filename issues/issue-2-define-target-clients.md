# Issue #2: Define Target Client Profiles

**Title:** Define target client profiles — validate 3 segments with 1-week discovery sprint

**Labels:** strategy

**Milestone:** M1: Company Definition & Positioning

## Body

## Description

Using the 4 service lines defined in `strategy/m1-service-offerings.md` (Web Application Engineering; Content & Data Pipelines; DevOps & CI/CD; AI Engineering), this issue defines 3 target client segments as testable hypotheses and provides a concrete plan to validate them within one week.

## 3 Target Client Segments

### Segment 1: Agency Overflow

**Hypothesis:** Small-to-mid digital agencies (5–50 people) regularly hit capacity limits on senior backend, frontend, or DevOps work and will pay NorthOps rates (CAD $1,200–$1,440/day) to avoid missing deadlines or turning down projects.

**Service lines they buy:** Web Application Engineering, DevOps & CI/CD
**Validation question:** "When was the last time you turned down work or missed a deadline because you didn't have a senior backend/DevOps person available?"

### Segment 2: Startups Without DevOps

**Hypothesis:** Seed-to-Series-A startups (2–15 people) that have a working product but deploy manually and have no CI/CD will pay for a fixed-price 3-day sprint (CAD $3,600–$4,320) to set up their pipeline.

**Service lines they buy:** DevOps & CI/CD, Web Application Engineering
**Validation question:** "How do you deploy right now? What breaks? How many hours per week does your team spend on deploy-related work?"

### Segment 3: SMBs Adding AI

**Hypothesis:** Small-to-medium businesses with an existing web product will pay a premium (CAD $1,560–$1,872/day, reflecting +30% AI premium) for a senior engineer to integrate a specific AI feature (RAG search, summarization, agent workflow) rather than hiring or experimenting internally.

**Service lines they buy:** AI Engineering, Content & Data Pipelines
**Validation question:** "Is there a specific AI feature your users or team have asked for that you haven't built yet? What stopped you?"

## 3-Step Validation Plan

### Step 1: Write outreach scripts
One per segment (3 total). Each script is a short LinkedIn/email message that asks the validation question. No pitch — just discovery. Scripts are ready at:
- `sales/outreach-agency-overflow.md`
- `sales/outreach-startups-no-devops.md`
- `sales/outreach-smbs-adding-ai.md`

### Step 2: Identify 5 target prospects per segment
15 total. Prioritize warm contacts (former clients, colleagues, local network). Fill remaining with targeted LinkedIn search. Each prospect should match one of 5 archetypes defined in `strategy/m1-target-clients.md`.

### Step 3: Run a 1-week discovery sprint
- **Day 1:** Send all 15 outreach messages
- **Day 3:** Follow up on non-responses
- **Day 5:** Book discovery calls
- **Day 7:** Document findings in a short memo; score each segment on response rate, expressed pain, and budget willingness

**Success threshold per segment:** At least 2 discovery calls completed AND at least 1 prospect willing to discuss a paid engagement.

## Decisions Needed From Founders

- **(A) Which 5 real prospects will you target this week?** Russell: identify 5 for Segments 1 and 2. Luc: identify 5 for Segments 2 and 3. List names by end of day.
- **(B) Who will run the first discovery sprint?** Assign one founder as lead for each segment, or split: Russell leads Segments 1–2, Luc leads Segment 3.

## Acceptance Criteria

- [ ] 3 client segments defined with testable hypotheses
- [ ] 5 target prospects identified per segment (15 total)
- [ ] Outreach scripts written and ready to send
- [ ] 1-week discovery sprint scheduled with clear success metrics
- [ ] Both founders have assigned their 5 prospects and agreed on sprint ownership
