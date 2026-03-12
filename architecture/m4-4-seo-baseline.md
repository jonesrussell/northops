# M4-4: SEO Baseline

> Page metadata, OG tags, canonical URLs, and indexing rules. All values sourced from `website/components.md`.

---

## Page Titles and Descriptions

Sourced from the Page Titles and Descriptions table in `website/components.md`:

| Page | Title | Description |
|------|-------|-------------|
| Home | NorthOps — Senior Engineering. Shipped in Days. | Two senior engineers delivering production-grade web applications, pipelines, DevOps, and AI integration. Fixed-price MVPs starting at CAD $3,600. |
| Services | Services — NorthOps | Web application engineering, content pipelines, DevOps, and AI integration. Fixed-price MVPs delivered by senior engineers in days. |
| Web Application Engineering | Web Application Engineering — NorthOps | Full-stack application builds across Laravel, Rails, React, and Drupal. Fixed-price MVPs starting at CAD $6,000. |
| Content & Data Pipelines | Content & Data Pipelines — NorthOps | Content pipeline design, CMS architecture, and data automation. Fixed-price MVPs starting at CAD $4,800. |
| DevOps & CI/CD | DevOps & CI/CD — NorthOps | CI/CD pipelines, server provisioning, and deploy automation. Fixed-price MVPs starting at CAD $3,600. |
| AI Engineering | AI Engineering — NorthOps | LLM integration, RAG search, embeddings, and agent workflows. Production-grade AI features starting at CAD $7,800. |
| About | About — NorthOps | Two senior engineers based in Northern Ontario. Backend, frontend, infrastructure, and AI — no layers between us and the code. |
| Contact | Contact — NorthOps | Book a free discovery call or send us a message. Senior engineering, scoped and priced before work begins. |
| 404 | Page Not Found — NorthOps | The page you're looking for doesn't exist or has moved. |

---

## Open Graph Tags

Each page includes the following OG tags, injected by the `useMeta` composable:

```html
<meta property="og:title" content="{page title}">
<meta property="og:description" content="{page description}">
<meta property="og:image" content="https://northops.ca/images/og-default.png">
<meta property="og:url" content="https://northops.ca/{slug}">
<meta property="og:type" content="website">
<meta property="og:site_name" content="NorthOps">
```

Default OG image: `/images/og-default.png` (per `website/components.md` Meta Defaults).

---

## Canonical Tags

Each page includes a canonical tag:

```html
<link rel="canonical" href="https://northops.ca/{slug}">
```

Pattern: `https://northops.ca/{slug}` (per `website/components.md` Meta Defaults). Home page canonical is `https://northops.ca/`.

---

## robots.txt

```
User-agent: *
Allow: /

Sitemap: https://northops.ca/sitemap.xml
```

All 8 public pages are indexable. No `Disallow` rules for the marketing site.

---

## sitemap.xml

Contains all 8 public page URLs. Excludes the 404 page. See `m4-4-domain-routing.md` for full sitemap content.

---

## Noindex Rules

- The **404 page** includes `<meta name="robots" content="noindex">` — it should not appear in search results
- All other pages are indexable (no noindex tag)
- The admin app (`/admin`, `/dashboard`, `/login`, `/settings/*`) is outside the marketing site scope and handles its own noindex rules

---

## Additional Meta Tags

```html
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#1e293b">
```

Theme color matches the primary slate/charcoal from the M2-2 visual identity.
