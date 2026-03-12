# M4-2 — Page Assembly

## Summary

This PR assembles all Vue page components for the NorthOps marketing website using the M4-1 architecture, M3-2 templates, and validated M3-3 content.

### What was produced

1. **9 page files** (`src/pages/`)
   - `index.vue` — Home page (HeroSection → ServiceGrid → WhyNorthOps → ProcessSteps → TeamSection → CTABanner)
   - `services/index.vue` — Services index (PageIntro → ServiceGrid → CTABanner)
   - `services/web-application-engineering.vue` — Service detail
   - `services/content-data-pipelines.vue` — Service detail
   - `services/devops-cicd.vue` — Service detail
   - `services/ai-engineering.vue` — Service detail
   - `about.vue` — About page (TextBlock → TeamBios → BulletList → CTABanner)
   - `contact.vue` — Contact page (PageIntro → ContactForm → ContactInfo → TextBlock → CTABanner)
   - `404.vue` — 404 page (UtilityLayout)

   All 4 service detail pages follow: HeroSection → BulletList → MVPBlock → TagList → TextBlock → CTABanner

2. **Content loader composable** (`src/composables/useContent.ts`)
   - Loads build-time JSON content generated from `website/*.md`
   - Typed interface: `ContentFile<T>` with `meta` and `sections`
   - Uses Vite's `import.meta.glob` for static imports

3. **Metadata composable** (`src/composables/useMetadata.ts`)
   - Injects title, description, OG tags, and canonical URL into `<head>`
   - All metadata values from `website/components.md` Page Titles and Descriptions table
   - Handles title suffix, default OG image, canonical URL construction

### Key decisions

- All page content is inline in templates (from M3-3 validated copy), ready for content pipeline integration in a future milestone
- Service detail pages use HeroSection with empty CTA props (no CTA in service heroes per M3-2)
- Section ordering matches M3-2 templates exactly, validated against M3-4 QA report
- 404 page uses UtilityLayout with minimal markup per M3-2

## Next steps for founders

1. **Review page assembly** — confirm all content matches M3-3 validated copy exactly (no invented text)
2. **Review composable interfaces** — verify `useContent` and `useMetadata` contracts meet your expectations
3. **Approve before merging** — this PR must be validated before M4-3 (styling/layout implementation)

## Related PRs

- M1: Business foundation and service line definitions
- M2: Brand voice, founder bios, pricing model
- M3-1: Website information architecture
- M3-2: Page templates and content structure
- M3-3: Validated website copy
- M3-4: Pre-launch content QA
- M4-1: Build architecture and component scaffolding

## Instructions

Review and approve before merging.
