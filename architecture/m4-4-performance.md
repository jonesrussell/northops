# M4-4: Performance Pass

> Lighthouse targets, image rules, bundle size checks, and preload strategy for the NorthOps marketing site.

---

## Lighthouse Targets

Run Lighthouse on all 9 pages. Target scores:

| Category | Target | Notes |
|----------|--------|-------|
| Performance | 90+ | Static site with no API calls — should score high |
| Accessibility | 90+ | See m4-4-accessibility.md for requirements |
| Best Practices | 90+ | HTTPS, no mixed content, no deprecated APIs |
| SEO | 90+ | See m4-4-seo-baseline.md for metadata |

Run against production build (`dist/`) served locally or on staging. Test both mobile and desktop presets.

---

## Image Optimization

| Rule | Detail |
|------|--------|
| Format | WebP preferred, PNG fallback for OG image |
| Compression | Lossy WebP at quality 80, or optimized PNG |
| Dimensions | Serve at display size, not oversized |
| OG image | `og-default.png` at 1200x630px |
| Team photos (if added) | Max 400px wide, WebP |
| Lazy loading | `loading="lazy"` on below-fold images |
| Width/height attributes | Set on all `<img>` to prevent layout shift |

No images are currently required beyond `og-default.png`. Team photos and service illustrations are future additions.

---

## Bundle Size Check

Expected output from `npm run build`:

| Asset | Target Size |
|-------|-------------|
| Total JS (gzipped) | Under 50 KB |
| Total CSS (gzipped) | Under 10 KB |
| Total HTML (all 9 files) | Under 100 KB |
| Full `dist/` (excluding images) | Under 500 KB |

The site uses Vue 3, Vue Router, and custom CSS — no heavy dependencies. Bundle size should be small.

Verification:
```bash
npm run build
du -sh dist/
du -sh dist/assets/
```

---

## Preload Hints

Only add preload hints if Lighthouse flags render-blocking resources:

| Resource | Preload? | Condition |
|----------|----------|-----------|
| Main CSS bundle | Yes, if render-blocking | `<link rel="preload" as="style">` |
| Fonts (if self-hosted) | Yes | `<link rel="preload" as="font" crossorigin>` |
| JS bundles | No | Vite handles async loading |
| Images | No | Use `loading="lazy"` instead |

Do not speculatively add preload hints. Only add them in response to measured performance issues.

---

## Core Web Vitals Targets

| Metric | Target | Notes |
|--------|--------|-------|
| LCP (Largest Contentful Paint) | Under 2.5s | Hero heading or first visible content |
| FID (First Input Delay) | Under 100ms | Minimal JS, should be fast |
| CLS (Cumulative Layout Shift) | Under 0.1 | Set image dimensions, no dynamic content injection |

---

## What Not to Add

Per project conventions — no speculative optimizations:

- No service worker or PWA manifest
- No prefetch of other pages
- No CDN for third-party libraries (everything bundled)
- No code splitting beyond Vite defaults
- No above-the-fold CSS inlining unless Lighthouse specifically flags it
