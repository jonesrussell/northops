# M4-1: Component Scaffolding Plan — northops.ca

> Props contracts, responsibilities, and composition rules for all 15 website components.

---

## Overview

The NorthOps marketing site uses 14 components plus 1 reusable section (WhyNorthOps). All component props are derived directly from M3-2 content structure field definitions and validated against M3-3 website copy. No invented fields.

---

## Component List

| # | Component | Type | Used On |
|---|-----------|------|---------|
| 1 | HeroSection | Section | Home |
| 2 | ServiceGrid | Section | Home, Services Index |
| 3 | ProofPoints | Section | Home (via WhyNorthOps) |
| 4 | ProcessSteps | Section | Home |
| 5 | TeamSection | Section | Home |
| 6 | CTABanner | Section | All pages (8 instances) |
| 7 | PageIntro | Section | Services Index, Contact |
| 8 | BulletList | Section | Service Detail (×4), About |
| 9 | MVPBlock | Section | Service Detail (×4) |
| 10 | TagList | Section | Service Detail (×4) |
| 11 | TextBlock | Section | Service Detail (×4), About, Contact |
| 12 | TeamBios | Section | About |
| 13 | ContactForm | Interactive | Contact |
| 14 | ContactInfo | Section | Contact |
| 15 | WhyNorthOps | Reusable Section | Home (required), About (optional) |

---

## Component Contracts

Props derived from M3-2 content structure and M3-3 website copy.

### HeroSection
```typescript
interface HeroSectionProps {
  headline: string        // e.g. "Senior engineering. Shipped in days."
  subhead: string         // 1-2 sentences, value proposition
  ctaLabel: string        // e.g. "Get Started"
  ctaUrl: string          // Always "/contact"
}
```

### ServiceGrid
```typescript
interface ServiceGridProps {
  services: Array<{
    name: string          // Service line name
    description: string   // 1-2 sentence summary
    url: string           // Service detail page slug
    price?: string        // Optional, used on Services Index (e.g. "Starting at CAD $6,000")
  }>
}
```

### ProofPoints
```typescript
interface ProofPointsProps {
  items: Array<{
    title: string         // Bold lead (e.g. "Senior-only, every time.")
    description: string   // Supporting detail, 1-3 sentences
  }>
}
```

### ProcessSteps
```typescript
interface ProcessStepsProps {
  steps: Array<{
    number: number        // 1-5
    title: string         // e.g. "Discovery call"
    description: string   // 1-2 sentences
  }>
}
```

### TeamSection
```typescript
interface TeamSectionProps {
  members: Array<{
    name: string
    title: string         // e.g. "Senior Engineer & Co-Founder"
    photo: string         // Image path
    bio: string           // 1 sentence summary
  }>
}
```

### CTABanner
```typescript
interface CTABannerProps {
  text: string            // Heading text (e.g. "Ready to start? Book a free discovery call.")
  ctaLabel: string        // Button label
  ctaUrl: string          // Always "/contact"
}
```

### PageIntro
```typescript
interface PageIntroProps {
  text: string            // 1-2 sentences
}
```

### BulletList
```typescript
interface BulletListProps {
  heading?: string        // Optional section heading (e.g. "Deliverables", "Principles")
  items: string[]         // 3-7 items
}
```

### MVPBlock
```typescript
interface MVPBlockProps {
  scope: string           // Description of MVP scope
  deliveryDays: number    // e.g. 5
  priceRange: string      // e.g. "CAD $6,000–$7,200"
  assumptions: string     // Pricing breakdown
}
```

### TagList
```typescript
interface TagListProps {
  tags: string[]          // Technology names from M1 allowed list
}
```

### TextBlock
```typescript
interface TextBlockProps {
  heading?: string        // Optional section heading
  content: string         // Markdown string, rendered as HTML
}
```

### TeamBios
```typescript
interface TeamBiosProps {
  members: Array<{
    name: string
    title: string
    photo: string
    bio: string           // Multi-paragraph markdown
  }>
}
```

### ContactForm
```typescript
interface ContactFormProps {
  fields: Array<{
    name: string          // Field name attribute
    type: string          // "text" | "email" | "textarea"
    required: boolean
    label: string
  }>
  submitLabel: string
  successMessage: string
  errorMessage: string
}
```

### ContactInfo
```typescript
interface ContactInfoProps {
  email: string
  location: string
}
```

### WhyNorthOps
```typescript
interface WhyNorthOpsProps {
  items: Array<{
    title: string
    description: string
  }>
}
```
WhyNorthOps is a wrapper that renders ProofPoints with the canonical 5 differentiators from `website/why-northops.md`.

---

## Component Responsibilities

| Component | Responsibility |
|-----------|---------------|
| HeroSection | Full-width hero with headline, subhead, and primary CTA |
| ServiceGrid | Card grid displaying service lines with optional pricing |
| ProofPoints | Numbered or icon list of differentiators |
| ProcessSteps | Ordered step sequence (5 steps, Option A engagement path) |
| TeamSection | Compact team member cards (photo, name, title, short bio) |
| CTABanner | Full-width call-to-action strip with heading and button |
| PageIntro | Short introductory text block at top of page |
| BulletList | Unordered list with optional heading (deliverables or principles) |
| MVPBlock | Structured block showing MVP scope, timeline, price, assumptions |
| TagList | Horizontal tag/pill display of technologies |
| TextBlock | Generic markdown-rendered content block with optional heading |
| TeamBios | Extended team profiles with multi-paragraph bios |
| ContactForm | Form with validation, submission, success/error states |
| ContactInfo | Static contact details (email, location) |
| WhyNorthOps | Reusable section composing ProofPoints with canonical content |

---

## Component Composition Rules

Page templates define the exact section order from M3-2. Components are composed in this fixed order per page:

### Home Page
```
HeroSection → ServiceGrid → WhyNorthOps (ProofPoints) → ProcessSteps → TeamSection → CTABanner
```

### Services Index
```
PageIntro → ServiceGrid → CTABanner
```

### Service Detail (×4)
```
ServiceHero* → BulletList → MVPBlock → TagList → TextBlock → CTABanner
```
*Note: ServiceHero uses HeroSection with service-specific props (name + description only, no CTA).

### About
```
TextBlock → TeamBios → BulletList → CTABanner
```

### Contact
```
PageIntro → ContactForm → ContactInfo → TextBlock → CTABanner
```

### 404
```
(UtilityLayout handles directly — headline, subhead, nav links from components.md)
```

**Rules:**
- CTABanner is always the last section before the footer (all pages except 404 and Privacy)
- Section order is fixed per template — no runtime reordering
- Each component receives its props from the page component, which imports from content JSON
- Components do not fetch their own data

---

## Example Component Stub

Generic pattern used for all 15 components:

```vue
<script setup lang="ts">
interface Props {
  // Props derived from M3-2 content structure
  headline: string
  subhead: string
}

defineProps<Props>()
</script>

<template>
  <!-- HeroSection: full-width hero with headline, subhead, and CTA -->
</template>
```

Each stub contains:
- `<script setup lang="ts">` with typed props interface
- `defineProps<Props>()` call
- Empty `<template>` with a structural comment describing the component's purpose
- No `<style>` block (styling deferred to M4-2)
- No invented fields beyond what M3-2 and M3-3 define
