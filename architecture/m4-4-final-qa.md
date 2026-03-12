# M4-4: Final QA Checklist

> Complete quality assurance pass before launch. Every item must pass.

---

## Full Page Clickthrough

Test all 9 pages in the production build (`npm run build`, serve from `dist/`):

### Home (`/`)
- [ ] Hero section renders with correct heading and CTA
- [ ] Service grid shows 4 services with correct names and links
- [ ] Proof points section renders
- [ ] Process steps (5 steps) render with correct labels
- [ ] Team section renders
- [ ] CTA banner: "Ready to start? Book a free discovery call." with "Book a Discovery Call" button
- [ ] CTA links to `/contact`

### Services (`/services`)
- [ ] Page intro renders with correct heading
- [ ] Service grid shows 4 services with correct names, descriptions, and links
- [ ] Each service card links to correct detail page
- [ ] CTA banner: "Have a project in mind?" with "Get Started" button
- [ ] CTA links to `/contact`

### Web Application Engineering (`/services/web-application-engineering`)
- [ ] Service hero renders with correct title and description
- [ ] All content sections render (bullet lists, MVP block, tag list)
- [ ] CTA banner: "Start with a discovery call." with "Book a Discovery Call" button
- [ ] CTA links to `/contact`

### Content & Data Pipelines (`/services/content-data-pipelines`)
- [ ] Same checks as above with correct service content
- [ ] CTA banner matches pattern

### DevOps & CI/CD (`/services/devops-cicd`)
- [ ] Same checks as above with correct service content
- [ ] CTA banner matches pattern

### AI Engineering (`/services/ai-engineering`)
- [ ] Same checks as above with correct service content
- [ ] CTA banner matches pattern

### About (`/about`)
- [ ] Page title and intro render
- [ ] Team bios section renders
- [ ] Content sections render correctly
- [ ] CTA banner: "Work with us." with "Get Started" button
- [ ] CTA links to `/contact`

### Contact (`/contact`)
- [ ] Page intro renders
- [ ] Contact form renders with correct field labels (Your name, Email address, Tell us about your project)
- [ ] Contact info renders (email: contact@northops.ca)
- [ ] CTA banner: "Book a discovery call." with "Book a Discovery Call" button

### 404 (any invalid path)
- [ ] Headline: "Page not found."
- [ ] Subhead: "The page you're looking for doesn't exist or has moved."
- [ ] Navigation links: Home, Services, Contact
- [ ] Links are functional

---

## CTA Verification

- [ ] All 7 CTA instances use correct labels (per `website/components.md` CTA Labels table)
- [ ] All CTAs link to `/contact`
- [ ] Header "Get Started" button links to `/contact`
- [ ] CTAs are keyboard accessible
- [ ] CTAs have visible hover and focus states

---

## Responsive Checks

Test at these breakpoints (per M4-3 layout system):

| Breakpoint | Width |
|------------|-------|
| Mobile | 375px |
| Tablet | 768px |
| Desktop | 1280px |

For each breakpoint on every page:
- [ ] No horizontal overflow
- [ ] Text is readable without horizontal scrolling
- [ ] Navigation collapses appropriately on mobile
- [ ] Images scale correctly
- [ ] CTA buttons are full-width on mobile, inline on desktop
- [ ] Footer stacks on mobile

---

## Metadata Correctness

For each of the 9 pages:
- [ ] `<title>` matches `website/components.md` Page Titles table
- [ ] `<meta name="description">` matches table
- [ ] `<meta property="og:title">` present
- [ ] `<meta property="og:description">` present
- [ ] `<meta property="og:image">` points to `/images/og-default.png`
- [ ] `<link rel="canonical">` points to correct `https://northops.ca/{slug}`
- [ ] 404 page has `<meta name="robots" content="noindex">`

---

## 404 Behavior

- [ ] Navigating to `/nonexistent-path` shows the 404 page
- [ ] HTTP response status is 404 (not 200)
- [ ] 404 page links (Home, Services, Contact) all work
- [ ] 404 page uses UtilityLayout (minimal, no full header/footer)

---

## Layout Consistency

- [ ] Header navigation identical across all DefaultLayout pages (Home, Services, About, Contact, Service Details)
- [ ] Footer identical across all DefaultLayout pages
- [ ] Active navigation state highlights current page
- [ ] Consistent section spacing across all pages
- [ ] Typography scale consistent (headings, body text, labels)
- [ ] Color palette consistent with M2-2 identity (no off-brand colors)

---

## Cross-Browser Checks

Test in:
- [ ] Chrome (latest)
- [ ] Firefox (latest)
- [ ] Safari (latest, if available)
- [ ] Mobile Safari (iOS)
- [ ] Chrome Mobile (Android)
