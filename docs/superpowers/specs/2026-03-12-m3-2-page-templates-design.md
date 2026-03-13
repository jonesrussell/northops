# M3-2: Page Templates & Content Structure — Design Spec

> Defines reusable page templates and section-level content structures for northops.ca, aligned with the M3-1 IA and all M1/M2 outputs.

---

## Problem

The M3-1 IA defines the site map, navigation, CTA system, and 15 components with field definitions. Before implementation can begin, we need two things:

1. **Page templates** — Which sections appear on each page type, in what order, using which components. This is layout, not data.
2. **Content structure** — Field-level specifications, constraints, and validation rules for every component and section. This is schema, not layout.

Without these, implementation would require developers to re-derive structure from the IA on every page — introducing drift and inconsistency.

---

## Approach

**Approach A: Templates define layout, Content Structure defines data contracts.**

- `strategy/m3-page-templates.md` — Which sections appear on each page type, in what order, with component references and content sources. No field definitions.
- `strategy/m3-content-structure.md` — Field definitions, constraints, and validation rules for all 15 components. No layout information.
- Components are defined once (in content structure), referenced many times (in templates).
- Zero duplication. One update point per concern.

This mirrors how a CMS, static site generator, or design system separates layout from schema.

---

## Deliverables

### File 1: `strategy/m3-page-templates.md`

**Sections (verbatim headings):**

1. **Template Overview** — Purpose + table mapping 6 page types to templates
2. **Home Page Template** — 6 sections: HeroSection → ServiceGrid → ProofPoints → ProcessSteps → TeamSection → CTABanner. Each row: section, component, content source
3. **Service Page Template** — Two sub-sections:
   - Services Index: PageIntro → ServiceGrid → CTABanner
   - Service Detail (×4): ServiceHero → BulletList → MVPBlock → TagList → TextBlock → CTABanner
4. **About Page Template** — TextBlock (narrative) → TeamBios → BulletList (principles) → CTABanner
5. **Why NorthOps Section** — Reusable section (not a standalone page). ProofPoints component sourced from M1 differentiation. Used on Home, optionally on About
6. **Contact Page Template** — PageIntro → ContactForm → ContactInfo → TextBlock (discovery call) → CTABanner. Note: M3-1 Contact page inventory omitted CTABanner, but the M3-1 CTA Rules require every page to end with a CTA section before the footer. CTABanner is added here as a deliberate correction.
7. **Utility Pages** — 404 (HeroSection variant + nav), Privacy (TextBlock)
8. **Reusable Components** — Table of 15 components: name, which templates use it, usage rules. No field definitions

### File 2: `strategy/m3-content-structure.md`

**Sections (verbatim headings):**

1. **Content Model Overview** — References M3-1 Page → Section → Component hierarchy
2. **Global Fields** — Voice (M2-1), tone channel (website), CTA rules (M3-1), metadata (title, description, OG)
3. **Page-Level Fields** — title (max 60 chars), description (max 155 chars), slug, sections[], cta, og_image
4. **Section-Level Fields** — id (kebab-case), heading (h2), body, component, cta (optional)
5. **Component-Level Fields** — Full definitions for all 15 components with constraints (max lengths, required/optional, allowed values)
6. **Validation Rules** — "Every page must include" table + "Must never appear" table

### File 3: `issues/issue-m3-2-page-templates.md`

GitHub issue draft with title, summary, next steps, PR links.

---

## Grounding Constraints

- All content sourced from M1 (services, pricing, positioning, differentiation) and M2 (voice, visual identity, narrative, bios)
- No invented capabilities, clients, or facts
- No aspirational language
- Components carry forward from M3-1 IA — no new components added without justification
- CTA system unchanged from M3-1

---

## Implementation

- Branch: `m3/page-templates`
- Commit: `M3-2: page templates & content structure`
- Verification: all 3 files exist, all templates include required sections, all 15 components represented, no invented facts
