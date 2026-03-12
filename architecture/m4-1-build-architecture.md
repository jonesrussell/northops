# M4-1: Build Architecture Specification — northops.ca

> Standalone Vite + Vue 3 marketing site. Decoupled from the Laravel/Inertia admin application.

---

## Overview

The NorthOps marketing website is a standalone, statically-built Vue 3 application powered by Vite. It ingests Markdown content from `website/` at build time, renders 8 public pages plus a 404, and outputs a fully static site suitable for CDN deployment. The site has no backend dependencies, no authentication, and no runtime state.

This specification defines the tech stack, directory structure, routing model, layout system, content ingestion pipeline, metadata injection, and build conventions.

---

## Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| Framework | Vue 3 (`<script setup>`, Composition API) | Component rendering |
| Build tool | Vite 6 | Dev server, production build, static output |
| Language | TypeScript (strict mode) | Type safety for props and content contracts |
| Routing | vite-plugin-pages or manual route map | File-based or declarative route definitions |
| Styling | Tailwind CSS 4 | Utility-first CSS, consistent with admin app |
| Content | Markdown with YAML frontmatter | Source of truth from M3-3 deliverables |
| Markdown parser | gray-matter + markdown-it (or remark) | Frontmatter extraction + HTML rendering |
| Static generation | vite-ssg or custom prerender script | Build-time rendering of all routes |
| Deployment | Static files (Caddy, Cloudflare, Netlify, S3) | No server runtime required |

No global state management library is used. Component props flow from content files through page components. No Vuex, no Pinia.

---

## Directory Structure

```
src/
├── components/          # 15 reusable Vue components (from M3-2 inventory)
│   ├── HeroSection.vue
│   ├── ServiceGrid.vue
│   ├── ProofPoints.vue
│   ├── ProcessSteps.vue
│   ├── TeamSection.vue
│   ├── CTABanner.vue
│   ├── PageIntro.vue
│   ├── BulletList.vue
│   ├── MVPBlock.vue
│   ├── TagList.vue
│   ├── TextBlock.vue
│   ├── TeamBios.vue
│   ├── ContactForm.vue
│   ├── ContactInfo.vue
│   └── WhyNorthOps.vue
├── layouts/             # Layout wrappers
│   ├── DefaultLayout.vue
│   ├── ServiceDetailLayout.vue
│   └── UtilityLayout.vue
├── pages/               # Page components (1:1 with routes)
│   ├── index.vue
│   ├── services/
│   │   ├── index.vue
│   │   ├── web-application-engineering.vue
│   │   ├── content-data-pipelines.vue
│   │   ├── devops-cicd.vue
│   │   └── ai-engineering.vue
│   ├── about.vue
│   ├── contact.vue
│   └── [...404].vue
├── content/             # Build-time content (parsed from website/*.md)
│   └── *.json           # Generated JSON from Markdown frontmatter + body
├── composables/         # Vue composables
│   ├── useContent.ts    # Load and type content from JSON
│   └── useMeta.ts       # Inject page metadata (title, description, OG)
├── styles/              # Global styles
│   └── main.css         # Tailwind directives + base styles
├── App.vue              # Root component with router-view
├── main.ts              # App entry point
└── router.ts            # Route definitions
```

---

## Routing Model

Routes map 1:1 to M3-1 site map slugs:

| Slug | Page Component | Layout |
|------|---------------|--------|
| `/` | `pages/index.vue` | DefaultLayout |
| `/services` | `pages/services/index.vue` | DefaultLayout |
| `/services/web-application-engineering` | `pages/services/web-application-engineering.vue` | ServiceDetailLayout |
| `/services/content-data-pipelines` | `pages/services/content-data-pipelines.vue` | ServiceDetailLayout |
| `/services/devops-cicd` | `pages/services/devops-cicd.vue` | ServiceDetailLayout |
| `/services/ai-engineering` | `pages/services/ai-engineering.vue` | ServiceDetailLayout |
| `/about` | `pages/about.vue` | DefaultLayout |
| `/contact` | `pages/contact.vue` | DefaultLayout |
| `*` (404) | `pages/[...404].vue` | UtilityLayout |

No dynamic routes. No parameterized segments. All routes are known at build time.

---

## Layout System

Three layouts, applied per-route:

### DefaultLayout
- Header navigation (Services, About, Contact, Get Started CTA)
- `<slot />` for page content
- Footer (Services, Company, Connect, Legal sections)
- Used by: Home, Services Index, About, Contact

### ServiceDetailLayout
- Extends DefaultLayout
- Adds service-specific structural wrapper (hero positioning, section spacing)
- Used by: All 4 service detail pages

### UtilityLayout
- Minimal layout: centered content, navigation links
- No full header/footer
- Used by: 404, Privacy Policy

Navigation labels, URLs, and footer content sourced from `website/components.md`.

---

## Content Ingestion Pipeline

```
website/*.md  →  build script  →  src/content/*.json  →  Vue page props
```

### Step 1: Parse Markdown
At build time (Vite plugin or prebuild script), each `website/*.md` file is parsed:
- YAML frontmatter → metadata object
- Structured Markdown sections → typed JSON objects matching component props

### Step 2: Generate JSON
Each page gets a corresponding JSON file in `src/content/`:
- `home.json` — HeroSection, ServiceGrid, ProofPoints, ProcessSteps, TeamSection, CTABanner props
- `services-index.json` — PageIntro, ServiceGrid, CTABanner props
- `service-web-application-engineering.json` — ServiceHero, BulletList, MVPBlock, TagList, TextBlock, CTABanner props
- (same pattern for other service detail pages)
- `about.json` — TextBlock, TeamBios, BulletList, CTABanner props
- `contact.json` — PageIntro, ContactForm, ContactInfo, TextBlock, CTABanner props
- `components.json` — Navigation, CTA labels, footer, metadata defaults

### Step 3: Import in Pages
Page components import their content JSON and pass sections as props to child components:

```typescript
import content from '@/content/home.json'
```

No runtime fetching. All content is statically embedded at build time.

---

## Metadata Injection

Each page injects `<head>` metadata using the `useMeta` composable:

```typescript
useMeta({
  title: 'Web Application Engineering — NorthOps',
  description: 'Full-stack application builds across Laravel, Rails, React, and Drupal.',
  canonical: 'https://northops.ca/services/web-application-engineering',
  ogImage: '/images/og-default.png'
})
```

Metadata values sourced from `website/components.md` Page Titles and Descriptions table. Title suffix `— NorthOps` appended automatically (except Home, which uses its own format).

Implementation: `@unhead/vue` or manual `document.head` manipulation during SSG.

---

## Global UI Strings Injection

All UI strings (navigation labels, CTA labels, footer content, form labels, process steps, 404 copy, meta defaults) are sourced from `website/components.md` and compiled into `src/content/components.json`.

Components reference this shared content file for any string that appears in multiple places. No hardcoded UI text in Vue templates.

---

## State Management

No global state store. The site is stateless and content-driven.

- Page-level data flows from JSON imports → page component → child component props
- Form state (ContactForm) is local component state only
- Navigation active state derived from current route
- Appearance/theme preferences (if any) handled via a composable

---

## Build & Deployment Notes

### Development
```bash
npm run dev          # Vite dev server with HMR
npm run content      # Regenerate content JSON from website/*.md
```

### Production Build
```bash
npm run build        # Vite build → static HTML/JS/CSS in dist/
```

Build output is a fully static site in `dist/`. No Node.js server required at runtime.

### Static Generation
All 9 routes (8 pages + 404) are pre-rendered at build time using vite-ssg or a custom prerender script. Output is plain HTML files with hydrated Vue for interactivity (ContactForm).

### Deployment Target
Static files served by Caddy (same server as admin app, different virtual host) or any CDN/static host. The marketing site and admin app are independent deployment artifacts.

### Asset Pipeline
- Images: `public/images/` (team photos, OG images)
- Fonts: loaded via CSS (system fonts or self-hosted)
- No external CDN dependencies at runtime
