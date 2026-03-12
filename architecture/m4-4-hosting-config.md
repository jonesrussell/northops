# M4-4: Hosting Configuration

> Hosting target, cache rules, redirects, and HTTPS for the NorthOps marketing site.

---

## Recommended Hosting Target

**Primary: Cloudflare Pages**

Rationale: free tier covers static sites, global CDN, automatic HTTPS, simple Git-based deploys. No server runtime required.

**Alternative: Caddy on existing server**

The marketing site can also be served by Caddy alongside the Laravel admin app as a separate virtual host. This avoids a third-party dependency but loses CDN edge caching.

---

## Build Configuration

| Field | Value |
|-------|-------|
| Build command | `npm run build` |
| Output directory | `dist` |
| Node version | 20 |
| Root directory | `/` (repo root) |

---

## Cache Rules

### HTML files
```
Cache-Control: no-cache, no-store, must-revalidate
```
HTML must always be fresh to reflect content updates.

### Hashed assets (JS, CSS in `assets/`)
```
Cache-Control: public, max-age=31536000, immutable
```
Content-hashed filenames guarantee cache safety. One-year cache.

### Images (`images/`)
```
Cache-Control: public, max-age=86400
```
One-day cache. Images are not hashed, so shorter TTL.

---

## Redirect Rules

### SPA Fallback
Not needed — the site is statically generated with one HTML file per route. Unmatched paths serve `404.html`.

### Trailing Slash Normalization
Strip trailing slashes: `/services/` → `/services`

### www Redirect
```
www.northops.ca → northops.ca (301 redirect)
```
Apex domain is canonical.

---

## HTTPS Enforcement

- All HTTP requests redirect to HTTPS (301)
- HSTS header enabled: `Strict-Transport-Security: max-age=31536000; includeSubDomains`
- TLS 1.2 minimum

---

## Caddy Configuration (if self-hosted)

```caddyfile
northops.ca {
    root * /var/www/northops-marketing/dist
    file_server

    # HTML: no cache
    @html path *.html /
    header @html Cache-Control "no-cache, no-store, must-revalidate"

    # Hashed assets: long cache
    @assets path /assets/*
    header @assets Cache-Control "public, max-age=31536000, immutable"

    # Images: 1-day cache
    @images path /images/*
    header @images Cache-Control "public, max-age=86400"

    # 404 fallback
    handle_errors {
        rewrite * /404.html
        file_server
    }

    # www redirect handled by separate block
}

www.northops.ca {
    redir https://northops.ca{uri} permanent
}
```
