# M3-3: Full Website Copy Draft

**Title:** M3-3 — Full Website Copy Draft

**Labels:** engineering, design

**Milestone:** M3: Website Rewrite

## Body

## Summary

Produced complete, production-ready website copy for every page defined in M3-1 and structured per M3-2 templates. 10 content files in `website/`, covering Home, Services Index, 4 Service Detail pages, About, Contact, Why NorthOps (reusable section), and component microcopy. All copy grounded in M1/M2 outputs with no invented facts. Includes a website copy one-pager for founder reference.

## What Was Produced

- **Website copy package** (`website/`) — 10 files:
  - `home.md` — Hero, ServiceGrid, ProofPoints, ProcessSteps, TeamSection, CTABanner
  - `services-index.md` — PageIntro, ServiceGrid (with prices), CTABanner
  - `service-web-application-engineering.md` — Full service detail copy
  - `service-content-data-pipelines.md` — Full service detail copy
  - `service-devops-cicd.md` — Full service detail copy
  - `service-ai-engineering.md` — Full service detail copy
  - `about.md` — Brand narrative, founder bios, principles, CTABanner
  - `contact.md` — PageIntro, ContactForm, ContactInfo, discovery call context, CTABanner
  - `why-northops.md` — Reusable ProofPoints section (5 bullets)
  - `components.md` — All UI strings: nav labels, CTA variants, form labels, meta titles/descriptions, 404 copy
- **Website Copy One-Pager** (`sales/website-copy-one-pager.md`) — Core messages, page overview, CTA system, voice notes

## Related PRs

- PR #31–#35 — M1: Company Definition & Positioning (all 5 issues)
- PR #36 — M2-1: Brand voice & messaging guide
- PR #37 — M2-2: Visual identity direction
- PR #38 — M2-3: Brand narrative
- PR #39 — M2-4: Founder bios
- PR #40 — M3-1: Website information architecture
- PR #41 — M3-2: Page templates & content structure

## Next Steps

1. **Review all copy page by page** — both founders read each file and confirm the voice, facts, and structure are correct. Flag any copy that doesn't sound like NorthOps.
2. **Finalize Luc's bio** — replace the role-based placeholder with a full bio once Luc provides personal details (experience, background, specific projects).
3. **Begin Vue component build** — use `components.md` as the source of truth for all UI strings, labels, and meta content during implementation.

Review and approve before merging.

## Acceptance Criteria

- [ ] All 10 website copy files exist in `website/`
- [ ] Every page follows its M3-2 template exactly (correct sections, correct order)
- [ ] All component fields match the M3-2 content structure definitions
- [ ] CTAs follow the M3-1 CTA system (correct labels, correct destinations)
- [ ] All service names, pricing, and deliverables match M1 exactly
- [ ] All narrative and bio content matches M2 exactly
- [ ] No invented capabilities, clients, case studies, or aspirational language
- [ ] Voice is direct, technical, grounded, confident, outcome-focused (M2-1)
