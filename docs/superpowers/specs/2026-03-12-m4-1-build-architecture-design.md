# M4-1 Build Architecture Design Spec

> Design decision: standalone Vite + Vue 3 marketing site, decoupled from the Laravel/Inertia admin application.

## Decision

The NorthOps marketing website is a standalone, statically-built Vue 3 application. It does not share routing, build pipeline, or deployment with the existing Laravel/Inertia admin app.

## Rationale

The marketing site is stateless, public, content-driven, and SEO-sensitive. The admin app is authenticated, stateful, CRUD-driven, and API-dependent. These are different domains. M3-1, M3-2, and M3-3 were all designed assuming file-based routing, markdown ingestion, and static metadata injection — patterns that map to a standalone Vite app.

## Architecture

- **Tech stack:** Vue 3, Vite 6, TypeScript strict, Tailwind CSS 4, vite-ssg
- **Content pipeline:** `website/*.md` → build-time JSON → Vue page props
- **Routing:** 8 pages + 404, all known at build time
- **Layouts:** DefaultLayout, ServiceDetailLayout, UtilityLayout
- **Components:** 14 + 1 reusable section (WhyNorthOps), props from M3-2
- **State:** None. Props flow from content JSON. No Vuex/Pinia.
- **Deployment:** Static files (Caddy, Cloudflare, Netlify, or S3)

## Deliverables

1. `architecture/m4-1-build-architecture.md` — full build architecture spec
2. `architecture/m4-1-component-scaffolding.md` — component contracts and composition rules
3. `src/components/*.vue` — 15 typed component stubs
4. `issues/issue-m4-1-build-architecture.md` — GitHub issue draft

## Approved by user

User confirmed standalone Vite app approach on 2026-03-12.
