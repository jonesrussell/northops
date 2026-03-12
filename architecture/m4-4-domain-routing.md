# M4-4: Domain & Routing Plan

> Domain mapping, admin separation, 404 handling, robots.txt, and sitemap for northops.ca.

---

## Domain Mapping

| Path | Destination | Notes |
|------|-------------|-------|
| `northops.ca/*` | Marketing site (static) | All public pages |
| `northops.ca/admin` | Laravel admin app | Separate origin or reverse proxy |

### Marketing Site Routes

All routes are statically generated. No dynamic routing at the server level.

| URL | HTML File |
|-----|-----------|
| `/` | `index.html` |
| `/services` | `services/index.html` |
| `/services/web-application-engineering` | `services/web-application-engineering.html` |
| `/services/content-data-pipelines` | `services/content-data-pipelines.html` |
| `/services/devops-cicd` | `services/devops-cicd.html` |
| `/services/ai-engineering` | `services/ai-engineering.html` |
| `/about` | `about.html` |
| `/contact` | `contact.html` |

### Admin App Separation

The Laravel admin app (`/admin`, `/dashboard`, `/login`, `/settings/*`) runs on the same server under a separate Caddy virtual host block or path-based reverse proxy. The marketing site does not include or reference admin routes.

Option A (path-based reverse proxy):
```
northops.ca/admin/* → PHP-FPM (Laravel)
northops.ca/* → static files (marketing)
```

Option B (subdomain):
```
app.northops.ca → Laravel admin
northops.ca → marketing static site
```

Decision deferred to founders. Both work with the current Caddy setup.

---

## 404 Handling

- Unmatched paths serve `dist/404.html`
- 404 page displays: headline, subhead, and links to Home, Services, Contact (per `website/components.md`)
- HTTP status code: 404 (not 200)
- Caddy `handle_errors` block returns proper 404 status with the custom page

---

## robots.txt

Served from `dist/robots.txt` (placed in `public/robots.txt` before build).

```
User-agent: *
Allow: /

Sitemap: https://northops.ca/sitemap.xml
```

No `Disallow` rules — all 8 public pages should be indexed. The admin app handles its own `robots.txt` with appropriate `Disallow` rules.

---

## Sitemap Generation

File: `dist/sitemap.xml` (generated at build time or placed in `public/`).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url><loc>https://northops.ca/</loc></url>
  <url><loc>https://northops.ca/services</loc></url>
  <url><loc>https://northops.ca/services/web-application-engineering</loc></url>
  <url><loc>https://northops.ca/services/content-data-pipelines</loc></url>
  <url><loc>https://northops.ca/services/devops-cicd</loc></url>
  <url><loc>https://northops.ca/services/ai-engineering</loc></url>
  <url><loc>https://northops.ca/about</loc></url>
  <url><loc>https://northops.ca/contact</loc></url>
</urlset>
```

The 404 page is excluded from the sitemap.
