# M3-2: Page Templates & Content Structure

**Title:** M3-2 — Page Templates & Content Structure

**Labels:** engineering, design

**Milestone:** M3: Website Rewrite

## Body

## Summary

Produced a full set of reusable page templates and section-level content structures for northops.ca: 6 page templates (Home, Services Index, Service Detail, About, Contact, Utility), a reusable "Why NorthOps" section template, and complete field-level specifications with constraints and validation rules for all 15 components from M3-1. The two files follow a clean separation of concerns: templates define layout and section order, content structure defines data contracts and validation.

## What Was Produced

- **Page Templates** (`strategy/m3-page-templates.md`) — 6 page templates with section tables (component + content source), reusable "Why NorthOps" section, component usage rules table. Templates reference components by name; no field definitions.
- **Content Structure** (`strategy/m3-content-structure.md`) — Content model overview, global fields (voice, tone, CTA rules, metadata), page-level fields with constraints, section-level fields, full field definitions for all 15 components (types, required/optional, max lengths, allowed values), validation rules ("must include" + "must never appear" tables).

## Related PRs

- PR #31–#35 — M1: Company Definition & Positioning (all 5 issues)
- PR #36 — M2-1: Brand voice & messaging guide
- PR #37 — M2-2: Visual identity direction
- PR #38 — M2-3: Brand narrative
- PR #39 — M2-4: Founder bios
- PR #40 — M3-1: Website information architecture

## Next Steps

1. **Review templates against the IA** — both founders confirm that page templates match the M3-1 site map and that section ordering is correct for each page type.
2. **Validate content structure constraints** — verify that field constraints (max lengths, required fields, allowed technologies) are practical for implementation. Flag anything that needs adjustment.
3. **Begin component implementation** — use the content structure as the spec for Vue component props in `resources/js/components/`. Each component's fields map directly to its props interface.

Review and approve before merging.

## Acceptance Criteria

- [ ] All 6 page templates defined with section tables
- [ ] All 15 components from M3-1 IA represented in both files
- [ ] Templates reference components by name (no field duplication)
- [ ] Content structure has field definitions with types and constraints for every component
- [ ] Validation rules enforce brand voice, CTA system, and grounding constraints
- [ ] No invented capabilities, clients, or technologies
- [ ] Clean separation: templates = layout, content structure = data contracts
