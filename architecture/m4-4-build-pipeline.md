# M4-4: Production Build Pipeline

> Build steps, output structure, and verification for the NorthOps marketing site.

---

## Build Command

```bash
npm run build
```

Runs Vite in production mode. No SSR required — the marketing site is a statically-generated Vue 3 application.

---

## Build Steps (in order)

1. **Content ingestion** — parse `website/*.md` files, extract YAML frontmatter and structured Markdown, output `src/content/*.json`
2. **Vite production build** — bundle Vue components, CSS, and static assets
3. **Static generation** — pre-render all 9 routes (8 pages + 404) to HTML via vite-ssg or custom prerender script
4. **Asset hashing** — Vite appends content hashes to JS/CSS filenames automatically

---

## Output Directory Structure

```
dist/
├── index.html                              # /
├── services/
│   ├── index.html                          # /services
│   ├── web-application-engineering.html    # /services/web-application-engineering
│   ├── content-data-pipelines.html         # /services/content-data-pipelines
│   ├── devops-cicd.html                    # /services/devops-cicd
│   └── ai-engineering.html                 # /services/ai-engineering
├── about.html                              # /about
├── contact.html                            # /contact
├── 404.html                                # catch-all
├── assets/
│   ├── *.js                                # hashed JS bundles
│   └── *.css                               # hashed CSS bundles
└── images/
    └── og-default.png                      # OG image
```

---

## Asset Hashing Rules

- JS and CSS files: Vite appends content hash (e.g., `index-a1b2c3d4.js`)
- HTML files: no hash, served with `Cache-Control: no-cache`
- Images in `public/images/`: copied as-is, no hash
- Font files (if self-hosted): copied as-is

---

## Environment Variable Handling

The marketing site has no runtime environment variables. All content is embedded at build time from `website/*.md` files.

Build-time constants (if needed):
- `VITE_SITE_URL=https://northops.ca` — used for canonical URL generation
- Set in `.env.production` or CI environment

---

## Static File Verification Checklist

After `npm run build`, verify:

- [ ] `dist/` directory exists and contains files
- [ ] All 9 HTML files present (8 pages + 404.html)
- [ ] `dist/assets/` contains hashed JS and CSS bundles
- [ ] `dist/images/og-default.png` exists
- [ ] Each HTML file contains valid `<title>` and `<meta name="description">` tags
- [ ] Each HTML file contains OG meta tags
- [ ] No references to `localhost` or dev-only URLs in output
- [ ] Total `dist/` size is reasonable (target: under 2 MB without images)
- [ ] HTML files are valid (no unclosed tags, no script errors)
