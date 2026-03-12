# M4-3 — Styling, Routing Polish, and CTA Wiring

## Summary

This PR applies the full visual system, responsive rules, CTA wiring, and routing polish to the NorthOps marketing website, grounded in the M2-2 visual identity direction.

### What was produced

1. **Global styling system** (`src/styles/`)
   - `tokens.css` — design tokens: colour palette (slate/charcoal primary, off-white background, steel blue accent), typography scale (Inter + JetBrains Mono), 4px-base spacing, breakpoints
   - `globals.css` — reset, base typography, link styles, button styles, utility classes
   - `layout.css` — container, grid system, section spacing, responsive breakpoints (640/768/1024/1280px)
   - All values derived from M2-2 visual identity direction

2. **Layout components** (`src/layouts/`)
   - `DefaultLayout.vue` — header (nav + Get Started CTA) + footer (Services, Company, Connect, Legal). Navigation labels from components.md. Active link states.
   - `ServiceDetailLayout.vue` — extends DefaultLayout with service-specific section spacing
   - `UtilityLayout.vue` — minimal layout for 404/Privacy (wordmark + centered content)

3. **Component styling** (`src/components/`)
   - All 15 components now have full `<template>` markup and `<style scoped>` blocks
   - Responsive behavior at all breakpoints
   - No invented visual elements (no gradients, shadows, animations, parallax — per M2-2 anti-patterns)

4. **CTA wiring**
   - All CTA labels match M3-3 validated copy
   - All CTA destinations point to `/contact` (per M3-1 CTA system)
   - Header "Get Started" button wired to `/contact`
   - All CTABanner instances functional

5. **Routing** (`src/router.ts`)
   - All 8 routes + 404 fallback mapped from M3-1 slugs
   - Scroll-to-top on every route change
   - 404 catch-all route for unmatched paths

6. **App scaffolding**
   - `src/App.vue` — root component importing global styles
   - `src/main.ts` — Vue app entry point with router

### Design decisions

- **No Tailwind** — custom CSS tokens per task spec, aligned with M2-2 "engineered, not decorated" principle
- **Inter + JetBrains Mono** — geometric sans (headings/body) + monospace (code/tech references), matching M2-2 type direction
- **Steel blue accent (#3d6b7e)** — muted, cool, used sparingly for interactive elements only, per M2-2 "accent colour is a highlight, not a theme"
- **No animations** — M2-2 explicitly bans animated hero sections, parallax, and performative interaction design

## Next steps for founders

1. **Review visual system** — confirm colour palette, typography, and spacing match your expectations for the NorthOps brand
2. **Test responsive behaviour** — verify pages collapse cleanly on mobile breakpoints
3. **Approve before merging** — this PR completes the frontend build; next milestone is content pipeline integration and deployment

## Related PRs

- M2-2: Visual identity direction
- M3-1: Website information architecture
- M3-2: Page templates and content structure
- M3-3: Validated website copy
- M4-1: Build architecture and component scaffolding
- M4-2: Page assembly

## Instructions

Review and approve before merging.
