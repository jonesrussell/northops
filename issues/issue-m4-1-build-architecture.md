# M4-1 — Build Architecture & Component Scaffolding

## Summary

This PR delivers the frontend architecture specification and component scaffolding for the NorthOps marketing website (northops.ca).

### What was produced

1. **Build Architecture Specification** (`architecture/m4-1-build-architecture.md`)
   - Tech stack: standalone Vue 3 + Vite app, decoupled from the Laravel/Inertia admin system
   - Directory structure: `src/{components,layouts,pages,content,composables,styles}/`
   - Routing model: 8 pages + 404, mapped from M3-1 site map slugs
   - Layout system: DefaultLayout, ServiceDetailLayout, UtilityLayout
   - Content ingestion pipeline: `website/*.md` → JSON → Vue page props (build-time only)
   - Metadata injection via `useMeta` composable sourced from M3-3 components.md
   - No global state store — props flow from content JSON through page components

2. **Component Scaffolding Plan** (`architecture/m4-1-component-scaffolding.md`)
   - 14 components + 1 reusable section (WhyNorthOps) with typed props contracts
   - All props derived from M3-2 content structure field definitions
   - Composition rules defining exact section order per page template
   - Component responsibilities and rendering boundaries

3. **Component Stubs** (`src/components/`)
   - 15 `.vue` files with `<script setup lang="ts">`, typed props, and structural comments
   - No styling, no invented fields — ready for M4-2 implementation

### Key architectural decision

The marketing site is a **standalone Vite app**, not part of the Laravel/Inertia admin system. Rationale:
- The marketing site is stateless, public, content-driven, and SEO-sensitive
- The admin app is authenticated, stateful, CRUD-driven, and API-dependent
- Different domains should not share a build pipeline
- M3-1/M3-2/M3-3 were all designed assuming a standalone frontend

## Next steps for founders

1. **Review the architecture spec** — confirm tech stack choices (Tailwind 4, vite-ssg, markdown-it vs remark) and deployment target
2. **Review component props** — verify that all TypeScript interfaces match your expectations for each section's data shape
3. **Approve before merging** — this PR is the foundation for all M4 build work; changes here propagate downstream

## Related PRs

- M1: Business foundation and service line definitions
- M2: Brand voice, founder bios, pricing model
- M3-1: Website information architecture (site map, navigation, CTA system)
- M3-2: Page templates and content structure (field definitions, constraints)
- M3-3: Validated website copy (10 markdown files in `website/`)
- M3-4: Pre-launch content QA (audit report, 4 corrections applied)

## Instructions

Review and approve before merging. This architecture drives all subsequent M4 milestones.
