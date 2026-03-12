<script setup lang="ts">
/**
 * Services Index — northops.ca/services
 *
 * Template: Services Index Template (M3-2)
 * Sections: PageIntro → ServiceGrid → CTABanner
 */
import { useMetadata } from '@/composables/useMetadata'
import PageIntro from '@/components/PageIntro.vue'
import ServiceGrid from '@/components/ServiceGrid.vue'
import CTABanner from '@/components/CTABanner.vue'

useMetadata({
  title: 'Services — NorthOps',
  description: 'Web application engineering, content pipelines, DevOps, and AI integration. Fixed-price MVPs delivered by senior engineers in days.',
  canonical: '/services',
})
</script>

<template>
  <DefaultLayout>
    <PageIntro
      text="NorthOps delivers across four service lines — web applications, content pipelines, DevOps, and AI engineering. Every engagement is scoped, priced, and built by senior engineers."
    />

    <ServiceGrid
      :services="[
        { name: 'Web Application Engineering', description: 'Full-stack application builds and rewrites across Laravel, Rails, React, and Drupal — from API to UI, delivered by two senior engineers with no handoff gaps.', url: '/services/web-application-engineering', price: 'Starting at CAD $6,000' },
        { name: 'Content & Data Pipelines', description: 'Design and build the systems that move content and data from source to destination — ingestion, transformation, publishing, and the automation that keeps it running.', url: '/services/content-data-pipelines', price: 'Starting at CAD $4,800' },
        { name: 'DevOps & CI/CD', description: 'Set up or fix your deployment pipeline, server infrastructure, and automation so your team ships reliably without manual steps.', url: '/services/devops-cicd', price: 'Starting at CAD $3,600' },
        { name: 'AI Engineering', description: 'Integrate LLMs, embeddings, and AI-powered automation into your existing product — not a science project, but production-grade engineering with clear deliverables.', url: '/services/ai-engineering', price: 'Starting at CAD $7,800' },
      ]"
    />

    <CTABanner
      text="Have a project in mind?"
      cta-label="Get Started"
      cta-url="/contact"
    />
  </DefaultLayout>
</template>
