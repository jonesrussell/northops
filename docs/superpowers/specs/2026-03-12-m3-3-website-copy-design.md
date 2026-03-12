# M3-3: Full Website Copy Draft — Design Spec

> Production-ready website copy for every page on northops.ca, grounded in M1/M2 outputs and structured per M3-2 templates.

---

## Approach

**Approach A: Template-driven copy with existing M2 draft as foundation.**

- Use the M2-1 website copy draft as starting point for Home, Services, About
- Extend to all pages using M3-2 template structure
- Write service detail pages fresh from M1 service offerings data
- Write Contact page fresh from Option A first-engagement path

---

## Deliverables

### Directory: `website/`

| File | Template | Content Source |
|------|----------|---------------|
| `home.md` | Home Page Template | M2 draft + M1 differentiation + Option A |
| `services-index.md` | Services Index Template | M1 service offerings |
| `service-web-application-engineering.md` | Service Detail Template | M1 Service Line 1 |
| `service-content-data-pipelines.md` | Service Detail Template | M1 Service Line 2 |
| `service-devops-cicd.md` | Service Detail Template | M1 Service Line 3 |
| `service-ai-engineering.md` | Service Detail Template | M1 Service Line 4 |
| `about.md` | About Page Template | M2-3 narrative + M2-4 bios |
| `contact.md` | Contact Page Template | Option A first-engagement path |
| `why-northops.md` | Why NorthOps Section | M1 differentiation |
| `components.md` | N/A | All UI strings and microcopy |

### Additional files

- `sales/website-copy-one-pager.md` — Concise reference
- `issues/issue-m3-3-website-copy.md` — GitHub issue draft

---

## Grounding Constraints

- All copy from M1/M2 outputs. No invented capabilities, clients, or facts.
- Voice: direct, technical, grounded, confident not loud, outcome-focused (M2-1)
- CTAs follow M3-1 CTA system exactly
- Service names, pricing, deliverables match M1 exactly
- Founder bios use real facts only (Russell) or role-based placeholder (Luc)
- No aspirational language per M2-1 vocabulary avoid list

---

## Implementation

- Branch: `m3/website-copy`
- Commit: `M3-3: full website copy draft`
- Verification: all files exist, templates followed, 15 components valid, no invented facts
