# Issue #3: Define Pricing Model

**Title:** Define pricing model — engagement types, rate structure, and first-engagement path

**Labels:** strategy, ops

**Milestone:** M1: Company Definition & Positioning

## Body

## Description

Establish how NorthOps charges for work across the 4 service lines (Web Application Engineering, Content & Data Pipelines, DevOps & CI/CD, AI Engineering) and 3 client segments (Agency Overflow, Startups Without DevOps, SMBs Adding AI).

## Decisions Made

### Engagement Models (3)
1. **Fixed-Price MVP** — defined scope, fixed price, delivered in 3–10 days. Best for first engagements and DevOps sprints.
2. **Sprint** — 1–2 week time-boxed engagement. Best for exploratory work and multi-feature builds.
3. **Retainer** — weekly/monthly reserved hours with 5–10% discount for 4+ week commitments. Best for agency overflow.

### Rate Structure
- Standard: CAD $120–200/hr (anchor: $150/hr × 8h = CAD $1,200/day)
- AI premium: +30% (CAD $1,560–$1,872/day)
- Retainer discount: 5–10% for 4+ week commitments

### First Engagement Path (Option A)
Simple SOW + e-transfer for the first 1–2 clients. 50% upfront, 50% on delivery. No MSA required until the third engagement or any single engagement exceeding CAD $15,000.

### Discovery Call Option
CAD $200–300 for a paid 1-hour assessment. Offered when scope is unclear or client wants a recommendation before committing.

## Files

- `strategy/m1-pricing-model.md` — full pricing framework
- `sales/pricing-one-pager.md` — client-facing pricing summary

## Next Steps

1. **Russell:** Review the pricing tables and confirm the standard daily rate (CAD $1,200) matches your target. Adjust if needed.
2. **Luc:** Review the AI premium (30%) and confirm it reflects the market rate for AI integration work. Adjust if needed.
3. **Both:** Draft a simple 1-page SOW template for Option A first engagements. Store in `contracts/sow-simple.md` (M4 task, but can be fast-tracked).

## Acceptance Criteria

- [ ] Both founders agree on standard daily rate and AI premium
- [ ] Engagement models documented with clear "when to use" guidance
- [ ] First-engagement path (Option A) documented step-by-step
- [ ] Pricing one-pager ready for client-facing use
- [ ] Simple SOW template drafted for Option A
