# M4-4 — Deployment & Launch Checklist

## Summary

This milestone completes the deployment pipeline, hosting configuration, and pre-launch quality passes for the NorthOps marketing website. All documents are grounded in M1–M4-3 deliverables with no invented fields or speculative integrations.

### What was produced

1. **Production build pipeline** (`architecture/m4-4-build-pipeline.md`)
   - Vite build command, output directory structure, asset hashing rules
   - Environment variable handling (build-time only, no runtime vars)
   - Static file verification checklist

2. **Hosting configuration** (`architecture/m4-4-hosting-config.md`)
   - Cloudflare Pages as primary target, Caddy self-hosted as alternative
   - Cache rules: no-cache for HTML, immutable for hashed assets
   - www → apex redirect, HTTPS enforcement, HSTS

3. **Domain & routing plan** (`architecture/m4-4-domain-routing.md`)
   - `northops.ca` → marketing site, `/admin` → Laravel app separation
   - robots.txt (allow all), sitemap.xml (8 public URLs)
   - 404 handling with proper HTTP status code

4. **SEO baseline** (`architecture/m4-4-seo-baseline.md`)
   - Titles and descriptions for all 9 pages from `website/components.md`
   - OG tags, canonical URLs, noindex on 404 only

5. **Accessibility pass** (`architecture/m4-4-accessibility.md`)
   - Landmark roles, heading order, color contrast checks against M2-2 palette
   - Focus states, keyboard navigation, form labels with ARIA

6. **Performance pass** (`architecture/m4-4-performance.md`)
   - Lighthouse 90+ targets across all categories
   - Bundle size targets, image optimization rules
   - No speculative optimizations

7. **Final QA checklist** (`architecture/m4-4-final-qa.md`)
   - Full clickthrough of all 9 pages with specific checks
   - CTA verification against `website/components.md`
   - Mobile + desktop responsive checks at 375/768/1280px
   - Metadata correctness, 404 behavior, layout consistency

## Next steps for founders

1. **Review hosting decision** — confirm Cloudflare Pages vs. Caddy self-hosted, and choose apex vs. subdomain for admin app separation
2. **Run QA checklist** — execute `m4-4-final-qa.md` against the production build and resolve any failures
3. **Approve and launch** — once QA passes and hosting is configured, deploy to `northops.ca`

## Related PRs

- M1: Company definition
- M2-1: Brand voice and messaging
- M2-2: Visual identity direction
- M3-1: Website information architecture
- M3-2: Page templates and content structure
- M3-3: Validated website copy
- M3-4: Pre-launch content QA
- M4-1: Build architecture and component scaffolding
- M4-2: Page assembly
- M4-3: Styling, routing polish, and CTA wiring

## Instructions

Review and approve before launch.
