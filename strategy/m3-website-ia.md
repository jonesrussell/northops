# M3-1: Website Information Architecture — NorthOps

> Full website structure for northops.ca. Aligned with M1 (positioning, services, pricing, differentiation) and M2 (voice, visual identity, narrative, bios).

---

## Site Map

```
northops.ca/
├── / (Home)
├── /services
│   ├── /services/web-application-engineering
│   ├── /services/content-data-pipelines
│   ├── /services/devops-cicd
│   └── /services/ai-engineering
├── /about
├── /contact
└── /privacy (optional, legal)
```

**Total pages:** 8 (4 top-level + 4 service detail pages + 1 optional)

---

## Navigation Model

### Primary Navigation (Header)
Visible on all pages. Minimal — 4 items maximum.

| Label | URL | Purpose |
|-------|-----|---------|
| Services | `/services` | Service lines overview (anchor links to each) |
| About | `/about` | Narrative, bios, principles |
| Contact | `/contact` | Contact form + direct info |
| **Get Started** (CTA button) | `/contact` | Primary CTA — styled as button, distinct from nav links |

### Secondary Navigation
None. The site is small enough that a secondary nav adds complexity without value. Service detail pages are accessed from the Services page, not from the nav.

### Footer Navigation

| Section | Links |
|---------|-------|
| **Services** | Web Application Engineering, Content & Data Pipelines, DevOps & CI/CD, AI Engineering |
| **Company** | About, Contact |
| **Connect** | GitHub, LinkedIn |
| **Legal** | Privacy Policy (if applicable) |

Footer also includes: NorthOps wordmark, one-line positioning statement, location (Northern Ontario, Canada), and email (contact@northops.ca).

---

## Content Model

### Page Entity
Every page has:
- `title` — Page title (used in `<title>` tag and `<h1>`)
- `description` — Meta description (used in `<meta name="description">` and OG tags)
- `slug` — URL path segment
- `sections[]` — Ordered list of section components
- `cta` — Primary CTA for this page (defaults to "Get Started")

### Section Entity
Every section has:
- `id` — Anchor ID for in-page linking
- `heading` — Section heading (`<h2>`)
- `body` — Section content (markdown or structured fields)
- `component` — Which component renders this section
- `cta` (optional) — Contextual CTA within the section

### Component Types
Each component type has defined fields (see Component Inventory below).

---

## Page Inventory

### Home (`/`)
**Purpose:** First impression. Communicate what NorthOps is, what it does, and how to start — in under 10 seconds.

| Section | Component | Content Source |
|---------|-----------|---------------|
| Hero | `HeroSection` | Positioning statement headline + subhead (from `sales/website-copy-draft.md`) |
| Services Overview | `ServiceGrid` | 4 service cards with name, one-liner, and link to detail page |
| Why NorthOps | `ProofPoints` | 4-5 differentiator bullets (from M1 differentiation) |
| How We Work | `ProcessSteps` | 5-step first-engagement path (Option A) |
| Team | `TeamSection` | Founder names, titles, photos, one-line bios |
| CTA | `CTABanner` | "Book a free discovery call" → `/contact` |

### Services (`/services`)
**Purpose:** Overview of all 4 service lines with links to detail pages.

| Section | Component | Content Source |
|---------|-----------|---------------|
| Intro | `PageIntro` | One paragraph: what NorthOps delivers |
| Service Cards | `ServiceGrid` | 4 cards: name, one-liner, MVP scope, starting price, link to detail page |
| CTA | `CTABanner` | "Have a project in mind?" → `/contact` |

### Service Detail Pages (`/services/{slug}`)
**Purpose:** One page per service line. Detailed scope, deliverables, pricing, and CTA.

Each of the 4 service detail pages follows the same structure:

| Section | Component | Content Source |
|---------|-----------|---------------|
| Hero | `ServiceHero` | Service name + one-line value proposition |
| Deliverables | `BulletList` | Core deliverables (3-6 bullets from M1 service offerings) |
| MVP | `MVPBlock` | MVP scope, delivery time, price range with assumptions |
| Tech Stack | `TagList` | Relevant technologies as tags |
| Ideal Client | `TextBlock` | One-sentence ideal client profile |
| CTA | `CTABanner` | "Start with a discovery call" → `/contact` |

**Service slugs:**
- `/services/web-application-engineering`
- `/services/content-data-pipelines`
- `/services/devops-cicd`
- `/services/ai-engineering`

### About (`/about`)
**Purpose:** Brand narrative, founder bios, principles. Build trust and credibility.

| Section | Component | Content Source |
|---------|-----------|---------------|
| Narrative | `TextBlock` | Brand narrative (from M2-3, 2-3 paragraphs) |
| Founders | `TeamBios` | Full bios with photos (from M2-4) |
| Principles | `BulletList` | 3-5 belief statements (from M2-3) |
| CTA | `CTABanner` | "Work with us" → `/contact` |

### Contact (`/contact`)
**Purpose:** Convert interest into a discovery call or direct outreach.

| Section | Component | Content Source |
|---------|-----------|---------------|
| Intro | `PageIntro` | One sentence: "Let's talk about your project." |
| Contact Form | `ContactForm` | Fields: name, email, message. Server-side validation, rate-limited. |
| Direct Contact | `ContactInfo` | Email: contact@northops.ca, Location: Northern Ontario, Canada |
| CTA context | `TextBlock` | "Free 15-30 minute discovery call. No pitch — just understanding your problem." |

---

## CTA System

All CTAs tie back to the first-engagement path (Option A: discovery call → SOW → e-transfer → delivery).

### Primary CTA
- **Label:** "Get Started" or "Book a Discovery Call"
- **Destination:** `/contact`
- **Placement:** Header nav (as button), home page hero, home page bottom
- **Style:** Accent colour background, high contrast text

### Secondary CTA
- **Label:** "Learn More" or "View Services"
- **Destination:** `/services` or specific service detail page
- **Placement:** Service cards, home page services section
- **Style:** Outline/ghost button, accent colour border

### Contextual CTAs
- **Service detail pages:** "Start with a discovery call" → `/contact`
- **About page:** "Work with us" → `/contact`
- **Services overview:** "Have a project in mind?" → `/contact`
- **Footer:** Email link (contact@northops.ca)

### CTA Rules
- Maximum 1 primary CTA visible at any time (no competing buttons)
- Every page ends with a CTA section before the footer
- CTAs use action verbs: "Get Started," "Book," "Start" — not "Submit" or "Click Here"
- No pop-ups, no modals, no exit-intent overlays

---

## Component Inventory

### HeroSection
- `headline` (string) — Primary heading, max 8 words
- `subhead` (string) — Supporting text, 1-2 sentences
- `cta_label` (string) — Button text
- `cta_url` (string) — Button destination

### ServiceGrid
- `services[]` — Array of service cards
  - `name` (string) — Service line name
  - `description` (string) — One-line value proposition
  - `price` (string, optional) — "Starting at CAD $X"
  - `url` (string) — Link to detail page

### ProofPoints
- `items[]` — Array of proof point bullets
  - `text` (string) — One-line differentiator

### ProcessSteps
- `steps[]` — Array of engagement steps
  - `number` (int) — Step number
  - `title` (string) — Step name (e.g., "Discovery call")
  - `description` (string) — One sentence

### TeamSection
- `members[]` — Array of team members
  - `name` (string)
  - `title` (string) — e.g., "Senior Engineer & Co-Founder"
  - `photo` (string) — Image path
  - `bio` (string) — One sentence

### TeamBios
- `members[]` — Array of team members (extended)
  - `name` (string)
  - `title` (string)
  - `photo` (string)
  - `bio` (text) — Full bio (2-3 paragraphs)

### ServiceHero
- `name` (string) — Service line name
- `description` (string) — One-line value proposition

### MVPBlock
- `scope` (string) — MVP scope description
- `delivery_days` (int) — Estimated delivery time
- `price_range` (string) — e.g., "CAD $3,600–$4,320"
- `assumptions` (string) — Pricing assumption math

### BulletList
- `items[]` — Array of strings

### TagList
- `tags[]` — Array of technology names

### TextBlock
- `content` (text) — Markdown content

### PageIntro
- `text` (string) — 1-2 sentence page introduction

### ContactForm
- `fields[]` — name (required), email (required), message (required)
- `submit_label` (string) — "Send Message"
- `success_message` (string)
- `error_message` (string)

### ContactInfo
- `email` (string)
- `location` (string)

### CTABanner
- `text` (string) — CTA heading
- `cta_label` (string) — Button text
- `cta_url` (string) — Button destination
