# M3-2: Page Templates — NorthOps

> Reusable page templates for northops.ca. Defines which sections appear on each page type, in what order, using which components. Field definitions live in `strategy/m3-content-structure.md`.
>
> Aligned with M3-1 (IA), M1 (services, pricing, positioning, differentiation), and M2 (voice, visual identity, narrative, bios).

---

## Template Overview

Each page on northops.ca maps to one of 6 templates. Templates define section order and component references — not field definitions or content.

| Page Type | Template | Pages Using It |
|-----------|----------|---------------|
| Home | Home Page Template | `/` |
| Services Index | Services Index Template | `/services` |
| Service Detail | Service Detail Template | `/services/web-application-engineering`, `/services/content-data-pipelines`, `/services/devops-cicd`, `/services/ai-engineering` |
| About | About Page Template | `/about` |
| Contact | Contact Page Template | `/contact` |
| Utility | Utility Page Template | `/404`, `/privacy` |

**6 templates. 8 pages. No standalone "Why NorthOps" page** — the differentiators appear as a reusable section within Home (and optionally About).

---

## Home Page Template

**Purpose:** First impression. Communicate what NorthOps is, what it does, and how to start — in under 10 seconds.

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Hero | `HeroSection` | Positioning statement headline + subhead (M1 positioning) |
| 2 | Services Overview | `ServiceGrid` | 4 service cards: name, one-liner, link to detail page (M1 service offerings) |
| 3 | Why NorthOps | `ProofPoints` | 4-5 differentiator bullets (M1 competitive differentiation) |
| 4 | How We Work | `ProcessSteps` | 5-step first-engagement path: Discovery call → Scope → SOW + payment → Build → Deliver (M1 pricing model, Option A) |
| 5 | Team | `TeamSection` | Founder names, titles, photos, one-line bios (M2 founder bios) |
| 6 | CTA | `CTABanner` | "Book a free discovery call" → `/contact` |

**Section rules:**
- Hero is always first. CTABanner is always last (before footer).
- ServiceGrid links to detail pages, not anchor links.
- ProofPoints uses differentiators, not aspirational claims.
- ProcessSteps reflects the actual Option A engagement path — no invented steps.
- TeamSection shows both founders with real titles and one-sentence bios.

---

## Service Page Template

### Services Index (`/services`)

**Purpose:** Overview of all 4 service lines with links to detail pages.

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Intro | `PageIntro` | One paragraph: what NorthOps delivers across all service lines |
| 2 | Service Cards | `ServiceGrid` | 4 cards: name, one-liner, MVP scope, starting price, link to detail page (M1 service offerings) |
| 3 | CTA | `CTABanner` | "Have a project in mind?" → `/contact` |

### Service Detail (`/services/{slug}`)

**Purpose:** One page per service line. Detailed scope, deliverables, pricing, and CTA.

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Hero | `ServiceHero` | Service name + one-line value proposition (M1 service offerings) |
| 2 | Deliverables | `BulletList` | Core deliverables, 3-6 bullets (M1 service offerings) |
| 3 | MVP | `MVPBlock` | MVP scope, delivery time, price range with assumptions (M1 pricing model) |
| 4 | Tech Stack | `TagList` | Relevant technologies as tags (M1 service offerings, founder deliverables) |
| 5 | Ideal Client | `TextBlock` | One-sentence ideal client profile (M1 target clients) |
| 6 | CTA | `CTABanner` | "Start with a discovery call" → `/contact` |

**Service slugs:**
- `/services/web-application-engineering`
- `/services/content-data-pipelines`
- `/services/devops-cicd`
- `/services/ai-engineering`

**Section rules:**
- All 4 detail pages use the same template — only content differs.
- MVPBlock includes pricing assumptions (e.g., "5 dev days @ CAD $1,200–$1,440/day").
- TagList only includes technologies the founders actually use — no aspirational stacks.
- Ideal Client is one sentence, not a persona.

---

## About Page Template

**Purpose:** Brand narrative, founder bios, principles. Build trust and credibility.

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Narrative | `TextBlock` | Brand narrative, 2-3 paragraphs (M2 brand narrative) |
| 2 | Founders | `TeamBios` | Full bios with photos, 2-3 paragraphs each (M2 founder bios) |
| 3 | Principles | `BulletList` | 3-5 belief statements (M2 brand narrative) |
| 4 | CTA | `CTABanner` | "Work with us" → `/contact` |

**Section rules:**
- Narrative leads — it sets context before bios.
- TeamBios uses real facts only. No invented credentials or clients.
- Belief statements come from M2-3 brand narrative, not invented for this page.
- ProofPoints (Why NorthOps) may optionally be added between Principles and CTA if differentiation context is needed. This is the only template where ProofPoints is optional.

---

## Why NorthOps Section

**Note:** This is a reusable section, not a standalone page. The site map has no `/why` page.

**Component:** `ProofPoints`

**Content Source:** M1 competitive differentiation — "Where NorthOps Wins" bullets.

**Used in:**
- Home Page Template (section 3, required)
- About Page Template (optional, between Principles and CTA)

**Section rules:**
- 4-5 bullets maximum. Each bullet is one line.
- Every bullet must be verifiable against M1 outputs — no aspirational claims.
- Bullets focus on what the client gets, not what NorthOps is.

**Source bullets (from M1 differentiation):**
1. Senior-only, every time — no juniors, no interns, no supervised work
2. Full-stack coverage without handoffs — backend, frontend, infra, AI from one team
3. Days, not weeks — MVPs scoped at 3-10 days
4. No overhead tax — no PMs, no account managers, direct access to engineers
5. AI capability built in — production-grade AI integration as a core service
6. Low-friction first engagement — simple SOW, e-transfer, work begins
7. No lock-in — fixed-price MVPs, short sprints, month-to-month retainers

Select 4-5 from this list at implementation time. Do not invent new ones.

---

## Contact Page Template

**Purpose:** Convert interest into a discovery call or direct outreach. Tied to Option A first-engagement path.

> **Note:** The M3-1 Contact page inventory omitted CTABanner, but the M3-1 CTA Rules require every page to end with a CTA section before the footer. CTABanner is included here as a deliberate correction of that inconsistency.

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Intro | `PageIntro` | "Let's talk about your project." |
| 2 | Contact Form | `ContactForm` | Fields: name (required), email (required), message (required) |
| 3 | Direct Contact | `ContactInfo` | Email: contact@northops.ca, Location: Northern Ontario, Canada |
| 4 | Discovery Call Context | `TextBlock` | "Free 15-30 minute discovery call. No pitch — just understanding your problem." |
| 5 | CTA | `CTABanner` | "Book a discovery call" → `/contact` (scroll-to-form or mailto fallback) |

**Section rules:**
- ContactForm has server-side validation and rate limiting. No CAPTCHA at launch.
- ContactInfo always shows email and location — no phone number.
- Discovery call description matches Option A from M1 pricing model.
- CTABanner on this page scrolls to form rather than navigating (already on `/contact`).

---

## Utility Pages

### 404 Page

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Error Message | `HeroSection` | Headline: "Page not found." Subhead: "The page you're looking for doesn't exist or has moved." |
| 2 | Navigation | `BulletList` | Links to Home, Services, Contact |

No CTABanner on 404. Keep it minimal.

### Privacy Page (`/privacy`)

| Order | Section | Component | Content Source |
|-------|---------|-----------|---------------|
| 1 | Content | `TextBlock` | Privacy policy content (legal, written at implementation time) |

No CTABanner on Privacy. This is a legal page.

---

## Reusable Components

All 15 components from M3-1 IA. Field definitions are in `strategy/m3-content-structure.md`.

| Component | Used In Templates | Usage Rules |
|-----------|-------------------|-------------|
| `HeroSection` | Home, 404 | Appears exactly once per page, always first section. Max 8-word headline. |
| `ServiceGrid` | Home, Services Index | Appears once per page. Always shows all 4 service lines — no partial grids. |
| `ProofPoints` | Home (required), About (optional) | 4-5 bullets max. Every bullet grounded in M1 differentiation. |
| `ProcessSteps` | Home | Appears once. Reflects actual Option A engagement path — 5 steps. |
| `TeamSection` | Home | Appears once. Shows both founders. One-sentence bios. |
| `TeamBios` | About | Appears once. Full bios, 2-3 paragraphs per founder. Real facts only. |
| `ServiceHero` | Service Detail (×4) | Appears once per service detail page, always first section. |
| `MVPBlock` | Service Detail (×4) | Appears once per service detail page. Must include pricing assumptions. |
| `BulletList` | Service Detail (×4), About, 404 | Generic list component. 3-6 items for deliverables, 3-5 for principles. |
| `TagList` | Service Detail (×4) | Technologies the founders actually use. No aspirational stacks. |
| `TextBlock` | Service Detail (×4), About, Contact, Privacy | Generic text component. Markdown content. |
| `PageIntro` | Services Index, Contact | 1-2 sentence page introduction. Appears after header, before main content. |
| `ContactForm` | Contact | Appears once. 3 required fields. Server-side validation. Rate-limited. |
| `ContactInfo` | Contact | Appears once. Email + location. No phone. |
| `CTABanner` | Home, Services Index, Service Detail (×4), About, Contact | Appears exactly once per page (except 404 and Privacy), always last section before footer. |
