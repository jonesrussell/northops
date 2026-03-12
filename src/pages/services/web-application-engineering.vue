<script setup lang="ts">
/**
 * Web Application Engineering — northops.ca/services/web-application-engineering
 *
 * Template: Service Detail Template (M3-2)
 * Sections: HeroSection → BulletList → MVPBlock → TagList → TextBlock → CTABanner
 */
import BulletList from '@/components/BulletList.vue'
import CTABanner from '@/components/CTABanner.vue'
import HeroSection from '@/components/HeroSection.vue'
import MVPBlock from '@/components/MVPBlock.vue'
import TagList from '@/components/TagList.vue'
import TextBlock from '@/components/TextBlock.vue'
import { useMetadata } from '@/composables/useMetadata'

useMetadata({
  title: 'Web Application Engineering — NorthOps',
  description: 'Full-stack application builds across Laravel, Rails, React, and Drupal. Fixed-price MVPs starting at CAD $6,000.',
  canonical: '/services/web-application-engineering',
})
</script>

<template>
  <ServiceDetailLayout>
    <HeroSection
      headline="Web Application Engineering"
      subhead="Full-stack application builds and rewrites across Laravel, Rails, React, and Drupal — from API to UI, delivered by two senior engineers with no handoff gaps."
      cta-label=""
      cta-url=""
    />

    <BulletList
      heading="Deliverables"
      :items="[
        'Laravel application build (API, admin, auth, queue) — Russell',
        'Drupal site build (theme, modules, migrations, tests) — Russell',
        'React/Next.js application build (SPA, SSR, component library) — Luc',
        'TypeScript API build (Node.js, Express, Fastify) — Luc',
        'Rails application build (API, admin, full-stack) — Luc',
        'Legacy PHP/Drupal modernization and migration — Russell',
      ]"
    />

    <MVPBlock
      scope="Single-feature app build or module rewrite (e.g., admin panel, customer portal, API endpoint set). Requirements review (0.5 day), architecture (0.5 day), implementation (3 days), testing and deploy (1 day)."
      :delivery-days="5"
      price-range="CAD $6,000–$7,200"
      assumptions="5 dev days @ CAD $1,200–$1,440/day = CAD $6,000–$7,200"
    />

    <TagList
      :tags="['PHP', 'Laravel', 'Drupal', 'React', 'Next.js', 'TypeScript', 'Node.js', 'Express', 'Fastify', 'Ruby', 'Rails', 'GitHub Actions', 'Docker']"
    />

    <TextBlock
      heading="Ideal Client"
      content="Agencies or startups that need a senior developer to build or rewrite a web application module on a defined timeline."
    />

    <CTABanner
      text="Start with a discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </ServiceDetailLayout>
</template>
