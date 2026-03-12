<script setup lang="ts">
/**
 * Content & Data Pipelines — northops.ca/services/content-data-pipelines
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
  title: 'Content & Data Pipelines — NorthOps',
  description: 'Content pipeline design, CMS architecture, and data automation. Fixed-price MVPs starting at CAD $4,800.',
  canonical: '/services/content-data-pipelines',
})
</script>

<template>
  <ServiceDetailLayout>
    <HeroSection
      headline="Content & Data Pipelines"
      subhead="Design and build the systems that move content and data from source to destination — ingestion, transformation, publishing, and the automation that keeps it running."
      cta-label=""
      cta-url=""
    />

    <BulletList
      heading="Deliverables"
      :items="[
        'Content pipeline design and implementation (ingest → transform → publish) — Russell',
        'CMS architecture and content modelling — Russell',
        'Python scripting and automation (data processing, ETL) — Luc',
        'Go service build (CLI tools, microservices, API proxies) — Russell',
        'Platform architecture review and technical audit — Russell',
      ]"
    />

    <MVPBlock
      scope="Single pipeline (CMS to static site generator, API to data warehouse, or content migration). Scope review (0.5 day), architecture (0.5 day), implementation (2.5 days), testing (0.5 day)."
      :delivery-days="4"
      price-range="CAD $4,800–$5,760"
      assumptions="4 dev days @ CAD $1,200–$1,440/day = CAD $4,800–$5,760"
    />

    <TagList
      :tags="['PHP', 'Laravel', 'Drupal', 'Go', 'Python', 'GitHub Actions', 'Docker', 'Deployer']"
    />

    <TextBlock
      heading="Ideal Client"
      content="Content-heavy businesses or agencies managing multi-platform publishing that need to automate manual content workflows."
    />

    <CTABanner
      text="Start with a discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </ServiceDetailLayout>
</template>
