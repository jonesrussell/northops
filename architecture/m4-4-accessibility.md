# M4-4: Accessibility Pass

> WCAG 2.1 AA compliance checklist for the NorthOps marketing site.

---

## Landmark Roles

Each page must use semantic HTML landmarks:

| Landmark | Element | Notes |
|----------|---------|-------|
| Banner | `<header>` | Site navigation, present on all pages via DefaultLayout |
| Navigation | `<nav>` | Header nav and footer nav, each with `aria-label` |
| Main | `<main>` | Page content area, one per page |
| Contentinfo | `<footer>` | Site footer, present on all pages via DefaultLayout |

- DefaultLayout provides `<header>`, `<main>`, `<footer>`
- UtilityLayout (404) provides `<main>` only (no full header/footer)
- Multiple `<nav>` elements distinguished by `aria-label` (e.g., "Main navigation", "Footer navigation")

---

## Heading Order Validation

Each page must follow a sequential heading hierarchy with no skipped levels:

| Page | Expected Heading Order |
|------|----------------------|
| Home | h1 (hero), h2 (services, proof points, process, team, CTA) |
| Services | h1 (page intro), h2 (per service card), h2 (CTA) |
| Service Detail | h1 (service name), h2 (sections), h2 (CTA) |
| About | h1 (page title), h2 (sections), h2 (CTA) |
| Contact | h1 (page title), h2 (form, info sections), h2 (CTA) |
| 404 | h1 (headline) |

Rules:
- Exactly one `<h1>` per page
- No skipped levels (no h1 → h3)
- Heading text must be meaningful (not "Section 1")

---

## Color Contrast Checks

Based on M2-2 visual identity (M4-3 tokens):

| Combination | Foreground | Background | Expected Ratio | WCAG AA |
|-------------|-----------|------------|-----------------|---------|
| Body text | Charcoal (#1e293b) | Off-white (#f8fafc) | >7:1 | Pass (normal text) |
| Heading text | Charcoal (#1e293b) | Off-white (#f8fafc) | >7:1 | Pass (large text) |
| Accent link | Steel blue (#3d6b7e) | Off-white (#f8fafc) | Must be >4.5:1 | Verify |
| CTA button text | White (#ffffff) | Steel blue (#3d6b7e) | Must be >4.5:1 | Verify |
| Footer text | Light gray | Dark background | Must be >4.5:1 | Verify |

Action items:
- [ ] Verify steel blue (#3d6b7e) on off-white meets 4.5:1 for normal text
- [ ] Verify white on steel blue meets 4.5:1 for button text
- [ ] Verify footer text/background contrast
- [ ] No color used as the sole indicator of meaning (links must have underline or other non-color cue)

---

## Focus States

All interactive elements must have visible focus indicators:

- [ ] Links: visible focus ring (outline, not just color change)
- [ ] CTA buttons: visible focus ring with sufficient contrast
- [ ] Form inputs (ContactForm): visible focus ring
- [ ] Navigation links: visible focus state
- [ ] Skip-to-content link: visible when focused, hidden otherwise
- [ ] Focus styles must not rely solely on color change

Implementation: use `outline` or `box-shadow` for focus indicators, not `outline: none`.

---

## Keyboard Navigation

- [ ] All pages navigable by Tab key alone
- [ ] Tab order follows visual layout (left-to-right, top-to-bottom)
- [ ] Skip-to-content link as first focusable element on every page
- [ ] Enter/Space activates buttons and links
- [ ] No keyboard traps (user can always Tab away)
- [ ] Mobile hamburger menu (if any) operable by keyboard
- [ ] CTA buttons reachable by keyboard

---

## Form Labels & ARIA

ContactForm (`/contact`) requirements:

- [ ] Every `<input>` and `<textarea>` has a visible `<label>` with matching `for`/`id`
- [ ] Required fields marked with `aria-required="true"`
- [ ] Error messages associated via `aria-describedby`
- [ ] Success message announced via `aria-live="polite"` region
- [ ] Submit button has descriptive text ("Send Message", not "Submit")
- [ ] Form has `aria-label="Contact form"` or is within a labeled `<section>`

Field labels (per `website/components.md`):
- Name → "Your name"
- Email → "Email address"
- Message → "Tell us about your project"

---

## Additional Checks

- [ ] All images have `alt` attributes (decorative images use `alt=""`)
- [ ] Page language declared: `<html lang="en">`
- [ ] No auto-playing media
- [ ] Text resizable to 200% without loss of content
- [ ] Touch targets minimum 44x44px on mobile
