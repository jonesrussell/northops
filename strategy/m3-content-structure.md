# M3-2: Content Structure — NorthOps

> Field-level specifications, constraints, and validation rules for every component and section on northops.ca. This file defines the data contracts. Layout and section order are in `strategy/m3-page-templates.md`.
>
> Aligned with M3-1 (IA, component inventory), M1 (services, pricing, positioning, differentiation), and M2 (voice, visual identity, narrative, bios).

---

## Content Model Overview

The content model follows a three-level hierarchy defined in M3-1:

```
Page
└── Section[]
    └── Component (renders the section)
        └── Fields (defined in this file)
```

- **Page** — A URL-addressable document with metadata and an ordered list of sections.
- **Section** — A discrete content block within a page, rendered by a single component.
- **Component** — A reusable rendering unit with defined fields and constraints.

Templates (in `m3-page-templates.md`) define which sections appear on each page. This file defines what each component requires to be valid.

---

## Global Fields

These rules apply across all pages and components.

### Voice & Tone
- **Voice:** Direct, Technical, Grounded, Confident not loud, Outcome-focused (M2-1 brand voice)
- **Tone channel:** Website — clear and scannable, short paragraphs, concrete examples, no walls of text
- **Vocabulary:** Use M2-1 vocabulary tables. Use "senior engineer," "production-grade," "fixed-price MVP," "ship/deploy/deliver," "pipeline." Avoid "synergy," "leverage," "cutting-edge," "revolutionary," "world-class," "solutions."

### CTA Rules (from M3-1)
- Maximum 1 primary CTA visible at any time
- Every page ends with a CTABanner before the footer (except 404 and Privacy)
- CTAs use action verbs: "Get Started," "Book," "Start" — not "Submit" or "Click Here"
- No pop-ups, no modals, no exit-intent overlays
- All CTAs tie to the first-engagement path: discovery call → SOW → e-transfer → delivery

### Metadata
Every page must include:

| Field | Type | Constraints |
|-------|------|-------------|
| `title` | string | Required. Max 60 characters. Used in `<title>` and `<h1>`. |
| `description` | string | Required. Max 155 characters. Used in `<meta name="description">` and OG description. |
| `slug` | string | Required. URL path segment. Lowercase, hyphens only. |
| `og_image` | string | Optional. Path to Open Graph image. Falls back to site default. |
| `canonical_url` | string | Auto-generated from slug. Format: `https://northops.ca/{slug}`. |

---

## Page-Level Fields

Every page entity has these fields:

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `title` | string | Yes | Max 60 chars. Appears in `<title>` and `<h1>`. |
| `description` | string | Yes | Max 155 chars. Meta description and OG. |
| `slug` | string | Yes | Lowercase, hyphens only. Must match site map from M3-1. |
| `sections[]` | array | Yes | Ordered list of section objects. Minimum 1 section. |
| `cta` | object | Yes* | Primary CTA for this page. Defaults to "Get Started" → `/contact`. *Not required on 404 and Privacy. |
| `og_image` | string | No | Image path. Falls back to site-wide default. |

---

## Section-Level Fields

Every section entity has these fields:

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `id` | string | Yes | Kebab-case. Used as anchor ID for in-page linking. Must be unique within the page. |
| `heading` | string | Yes* | Rendered as `<h2>`. *HeroSection uses `<h1>` instead — heading is the headline. |
| `body` | text | No | Section content. Markdown or structured fields depending on component. |
| `component` | string | Yes | Component name from the Component-Level Fields section below. Must be a valid component. |
| `cta` | object | No | Contextual CTA within the section. Object with `label` (string) and `url` (string). |

---

## Component-Level Fields

Field definitions for all 15 components from M3-1 IA. Each component is defined once here and referenced by name in templates.

### HeroSection

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `headline` | string | Yes | Max 8 words. Primary heading, rendered as `<h1>`. |
| `subhead` | string | Yes | 1-2 sentences. Supporting text below headline. |
| `cta_label` | string | Yes | Button text. Action verb. Max 4 words. |
| `cta_url` | string | Yes | Button destination. Must be a valid internal path. |

**Usage:** Home page (hero), 404 page (error message).

---

### ServiceGrid

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `services[]` | array | Yes | Exactly 4 items (one per service line). |
| `services[].name` | string | Yes | Service line name. Must match M1 service offerings. |
| `services[].description` | string | Yes | One-line value proposition. Max 1 sentence. |
| `services[].price` | string | No | "Starting at CAD $X". Only shown on Services Index, not Home. |
| `services[].url` | string | Yes | Link to service detail page. Must match M3-1 slugs. |

**Usage:** Home page (services overview), Services Index (service cards).

---

### ProofPoints

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `items[]` | array | Yes | 4-5 items. Each must be grounded in M1 differentiation. |
| `items[].text` | string | Yes | One-line differentiator. Max 1 sentence. No aspirational language. |

**Usage:** Home page (Why NorthOps section), About page (optional).

---

### ProcessSteps

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `steps[]` | array | Yes | Exactly 5 items. Must reflect Option A first-engagement path. |
| `steps[].number` | int | Yes | 1-5. Sequential. |
| `steps[].title` | string | Yes | Step name. Max 3 words. |
| `steps[].description` | string | Yes | One sentence explaining the step. |

**Canonical steps (from M1 pricing model, Option A):**
1. Discovery call — Free 15-30 minute call to understand the problem
2. Scope — Define deliverables, timeline, and price
3. SOW + payment — Simple statement of work, 50% upfront via e-transfer
4. Build — Senior engineers build, with daily check-ins if needed
5. Deliver — Deploy, verify, collect remaining 50%

**Usage:** Home page only.

---

### TeamSection

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `members[]` | array | Yes | 2 items (both founders). |
| `members[].name` | string | Yes | Full name. |
| `members[].title` | string | Yes | e.g., "Senior Engineer & Co-Founder". |
| `members[].photo` | string | Yes | Image path. Real photo, not placeholder. |
| `members[].bio` | string | Yes | One sentence. Max 20 words. |

**Usage:** Home page only.

---

### TeamBios

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `members[]` | array | Yes | 2 items (both founders). |
| `members[].name` | string | Yes | Full name. |
| `members[].title` | string | Yes | Role + "Co-Founder". |
| `members[].photo` | string | Yes | Image path. Real photo. |
| `members[].bio` | text | Yes | 2-3 paragraphs. Real facts only — no invented credentials, clients, or projects. |

**Usage:** About page only.

---

### ServiceHero

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `name` | string | Yes | Service line name. Must match M1 service offerings. |
| `description` | string | Yes | One-line value proposition. Max 2 sentences. From M1 service offerings. |

**Usage:** Service Detail pages (×4), always first section.

---

### MVPBlock

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `scope` | string | Yes | MVP scope description. 1-2 sentences. From M1 service offerings. |
| `delivery_days` | int | Yes | Estimated delivery time in business days. From M1 pricing model. |
| `price_range` | string | Yes | e.g., "CAD $3,600–$4,320". Must match M1 pricing model calculations. |
| `assumptions` | string | Yes | Pricing math. e.g., "3 dev days @ CAD $1,200–$1,440/day". Transparent. |

**Usage:** Service Detail pages (×4).

---

### BulletList

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `items[]` | array | Yes | 3-6 items for deliverables, 3-5 for principles, 2-4 for nav links. |
| `items[].text` | string | Yes | One line per item. |

**Usage:** Service Detail (deliverables), About (principles), 404 (nav links).

---

### TagList

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `tags[]` | array | Yes | 3-10 technology names. |
| `tags[].name` | string | Yes | Technology name. Must be a technology the founders actually use (from M1 founder deliverables). |

**Allowed technologies (from M1):**
- Russell: PHP, Laravel, Drupal, Go, Rust, Caddy, Nginx, GitHub Actions, Deployer, Docker, systemd
- Luc: TypeScript, React, Next.js, Node.js, Express, Fastify, Ruby, Rails, Python, Docker, GitHub Actions

Do not include technologies not listed above.

**Usage:** Service Detail pages (×4).

---

### TextBlock

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `content` | text | Yes | Markdown content. No minimum/maximum length — scaled to context. |

**Usage:** Service Detail (ideal client), About (narrative), Contact (discovery call context), Privacy (policy content).

---

### PageIntro

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `text` | string | Yes | 1-2 sentences. Page introduction. Max 40 words. |

**Usage:** Services Index, Contact page.

---

### ContactForm

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `fields[]` | array | Yes | Exactly 3 fields: name, email, message. All required. |
| `fields[].name` | string | Yes | Field identifier: "name", "email", or "message". |
| `fields[].type` | string | Yes | "text" for name, "email" for email, "textarea" for message. |
| `fields[].required` | boolean | Yes | Always `true`. |
| `submit_label` | string | Yes | "Send Message". |
| `success_message` | string | Yes | Shown after successful submission. |
| `error_message` | string | Yes | Shown on validation failure. |

**Validation:** Server-side. Rate-limited (max 5 submissions per IP per hour). No CAPTCHA at launch.

**Usage:** Contact page only.

---

### ContactInfo

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `email` | string | Yes | "contact@northops.ca". |
| `location` | string | Yes | "Northern Ontario, Canada". |

No phone number. No physical address.

**Usage:** Contact page only.

---

### CTABanner

| Field | Type | Required | Constraints |
|-------|------|----------|-------------|
| `text` | string | Yes | CTA heading. 1 sentence. Action-oriented. |
| `cta_label` | string | Yes | Button text. Action verb. Max 4 words. |
| `cta_url` | string | Yes | Button destination. Typically `/contact`. |

**Usage:** All pages except 404 and Privacy. Always the last section before the footer.

---

## Validation Rules

### Every Page Must Include

| Rule | Applies To |
|------|-----------|
| `title` field, max 60 characters | All pages |
| `description` field, max 155 characters | All pages |
| At least one section | All pages |
| CTABanner as final section before footer | All pages except 404, Privacy |
| Heading hierarchy: one `<h1>` (from HeroSection or page title), sections use `<h2>` | All pages |
| All content grounded in M1/M2 outputs | All pages |
| All service names match M1 service offerings exactly | Pages with service references |
| All pricing matches M1 pricing model calculations | Pages with pricing |
| All technology names from M1 founder deliverables | Pages with tech stacks |

### Must Never Appear

| Rule | Reason |
|------|--------|
| Invented capabilities, clients, or case studies | Grounding constraint — only real facts |
| Aspirational language ("revolutionizing," "cutting-edge," "world-class") | M2-1 brand voice — vocabulary avoid list |
| Stock photography | M2-2 visual identity — real photos or none |
| Pop-ups, modals, exit-intent overlays | M3-1 CTA rules |
| Technologies not in M1 founder deliverables | No aspirational stacks |
| Phone numbers or physical addresses | Contact model — email + location only |
| Third-party tracking scripts at launch | Privacy by default |
| Pricing without assumptions | Transparency — always show the math |
| Multiple competing primary CTAs on one page | M3-1 CTA rules — max 1 primary CTA visible |
| "Submit" or "Click Here" as CTA text | M3-1 CTA rules — action verbs only |
