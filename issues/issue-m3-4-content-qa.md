# M3-4: Pre-Launch Content QA

**Title:** M3-4 — Pre-Launch Content QA

**Labels:** engineering, design

**Milestone:** M3: Website Rewrite

## Body

## Summary

Performed a full consistency, structure, and voice audit of all M3-3 website copy against M3-1 (IA), M3-2 (templates + content structure), and M2-1 (brand voice). Applied 4 corrections for cross-file inconsistencies and missing metadata. Documented 4 edge cases where approved M2 source content intentionally exceeds M3-2 guideline ranges. All pages are now validated and ready for build.

## What Was Reviewed

- 10 website copy files in `website/`
- Template compliance (section order against M3-2)
- Component field compliance (all 15 components against content structure)
- CTA system (labels, destinations, rules against M3-1)
- Voice & tone (vocabulary, aspirational language against M2-1)
- Pricing accuracy (all prices against M1)
- Service name accuracy (all 4 names against M1)
- Metadata (titles, descriptions, slugs)
- Grounding (no invented content)
- Cross-file consistency (descriptions, proof points)

## What Was Produced

- **QA Report** (`qa/m3-4-content-qa-report.md`) — Full audit with page-by-page results, component usage audit, CTA system audit, voice alignment, metadata audit, issues found, corrections applied, and edge cases documented
- **QA One-Pager** (`sales/website-qa-one-pager.md`) — Concise summary: what was reviewed, key findings, corrections applied, ready-for-build status

## Corrections Applied

1. Aligned ProofPoints item #5 between `home.md` and `why-northops.md`
2. Aligned Home ServiceGrid Web App description with detail page
3. Added 404 page metadata to `components.md`
4. Added slug column to `components.md` Page Titles and Descriptions table

## Related PRs

- PR #31–#35 — M1: Company Definition & Positioning (all 5 issues)
- PR #36 — M2-1: Brand voice & messaging guide
- PR #37 — M2-2: Visual identity direction
- PR #38 — M2-3: Brand narrative
- PR #39 — M2-4: Founder bios
- PR #40 — M3-1: Website information architecture
- PR #41 — M3-2: Page templates & content structure
- PR #42 — M3-3: Full website copy draft

## Next Steps

1. **Review the QA report** — both founders confirm that the 4 corrections are correct and the 4 edge cases should remain as documented.
2. **Finalize Luc's bio** — expand from 2 to 3 paragraphs once Luc provides personal details (experience, background, specific projects).
3. **Begin M4 (Website Build)** — use the validated `website/` files as content source and `components.md` as the UI strings source of truth for Vue component implementation.

Review and approve before merging.

## Acceptance Criteria

- [ ] QA report includes all required sections (page-by-page, template compliance, component audit, CTA audit, voice alignment, metadata audit, issues, corrections)
- [ ] All corrections are minimal, factual, and traceable to specific deviations
- [ ] Edge cases are documented with rationale (why source material overrides guideline)
- [ ] No content was rewritten beyond what was required to fix deviations
- [ ] Updated files (`home.md`, `components.md`) reflect corrections accurately
- [ ] No invented capabilities or facts in any corrected content
