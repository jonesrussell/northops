# NorthOps — Website Information Architecture

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
└── /privacy (optional)
```

8 pages total. Minimal, flat structure.

---

## Navigation

**Header (4 items):**
Services | About | Contact | **Get Started** (button)

**Footer:**
Services (4 links) | Company (About, Contact) | Connect (GitHub, LinkedIn) | Legal (Privacy)

No secondary nav. No dropdowns. No hamburger menu on desktop.

---

## Core Pages

| Page | Purpose | Key Sections |
|------|---------|-------------|
| **Home** | First impression — what, who, how | Hero, Services Overview, Why NorthOps, How We Work, Team, CTA |
| **Services** | All 4 service lines with detail links | Intro, Service Cards (4), CTA |
| **Service Detail** (×4) | One per service line | Hero, Deliverables, MVP + Pricing, Tech Stack, Ideal Client, CTA |
| **About** | Narrative, bios, principles | Brand Narrative, Founder Bios, Principles, CTA |
| **Contact** | Convert interest to discovery call | Intro, Contact Form, Direct Contact Info |

---

## CTAs

| Type | Label | Destination | Where |
|------|-------|-------------|-------|
| **Primary** | "Get Started" / "Book a Discovery Call" | `/contact` | Header, Home hero, page bottoms |
| **Secondary** | "Learn More" / "View Services" | `/services` or detail page | Service cards |
| **Contextual** | "Start with a discovery call" | `/contact` | Service detail pages, About |

All CTAs tie to the first-engagement path: discovery call → SOW → e-transfer → delivery.

---

## Key Components

| Component | Used On | Purpose |
|-----------|---------|---------|
| `HeroSection` | Home | Headline + subhead + primary CTA |
| `ServiceGrid` | Home, Services | 4 service cards with name, one-liner, price |
| `ProofPoints` | Home | Differentiator bullets |
| `ProcessSteps` | Home | 5-step engagement path |
| `TeamSection` | Home | Founder photos + one-line bios |
| `TeamBios` | About | Full founder bios |
| `ServiceHero` | Service Detail | Service name + value prop |
| `MVPBlock` | Service Detail | MVP scope, delivery, pricing |
| `ContactForm` | Contact | Name, email, message |
| `CTABanner` | All pages | End-of-page conversion CTA |
