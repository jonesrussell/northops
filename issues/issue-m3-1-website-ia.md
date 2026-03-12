# M3-1: Website Information Architecture

**Title:** M3-1 — Website Information Architecture

**Labels:** engineering, design

**Milestone:** M3: Website Rewrite

## Body

## Summary

Produced the full website information architecture for northops.ca: site map, navigation model, content model, page inventory with section-level detail, CTA system, and component inventory with field definitions. This document is the blueprint for the M3 website implementation.

## What Was Produced

- **Website IA** (`strategy/m3-website-ia.md`) — site map (8 pages), navigation model (primary + footer), content model (page/section/component entities), page inventory (6 page types with section tables), CTA system (primary/secondary/contextual tied to Option A), component inventory (14 components with field definitions)
- **IA One-Pager** (`sales/website-ia-one-pager.md`) — concise reference for site map, navigation, core pages, CTAs, and key components

## Related PRs

- PR #31–#35 — M1: Company Definition & Positioning (all 5 issues)
- PR #36 — M2-1: Brand voice & messaging guide
- PR #37 — M2-2: Visual identity direction
- PR #38 — M2-3: Brand narrative
- PR #39 — M2-4: Founder bios

## Next Steps

1. **Review the page inventory** — both founders confirm the page list and section structure. Flag any missing pages or sections before implementation begins.
2. **Map content to components** — use the component inventory to create Vue component stubs (`resources/js/components/`) matching the field definitions. This becomes the first implementation task.
3. **Prioritize build order** — recommended: Home → Services → Service Detail pages → About → Contact. Home page is the highest-impact page for launch.

Review and approve before merging.

## Acceptance Criteria

- [ ] Both founders agree on the site map (8 pages)
- [ ] Navigation model is minimal and clear (4 header items, footer sections)
- [ ] Every page has a defined purpose and required sections
- [ ] CTA system ties to the first-engagement path (Option A)
- [ ] Component inventory has field definitions for all components
- [ ] No unnecessary pages or features
