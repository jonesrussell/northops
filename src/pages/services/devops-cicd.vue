<script setup lang="ts">
/**
 * DevOps & CI/CD — northops.ca/services/devops-cicd
 *
 * Template: Service Detail Template (M3-2)
 * Sections: HeroSection → BulletList → MVPBlock → TagList → TextBlock → CTABanner
 */
import { useMetadata } from '@/composables/useMetadata'
import HeroSection from '@/components/HeroSection.vue'
import BulletList from '@/components/BulletList.vue'
import MVPBlock from '@/components/MVPBlock.vue'
import TagList from '@/components/TagList.vue'
import TextBlock from '@/components/TextBlock.vue'
import CTABanner from '@/components/CTABanner.vue'

useMetadata({
  title: 'DevOps & CI/CD — NorthOps',
  description: 'CI/CD pipelines, server provisioning, and deploy automation. Fixed-price MVPs starting at CAD $3,600.',
  canonical: '/services/devops-cicd',
})
</script>

<template>
  <ServiceDetailLayout>
    <HeroSection
      headline="DevOps & CI/CD"
      subhead="Set up or fix your deployment pipeline, server infrastructure, and automation so your team ships reliably without manual steps."
      cta-label=""
      cta-url=""
    />

    <BulletList
      heading="Deliverables"
      :items="[
        'CI/CD pipeline setup (GitHub Actions, Deployer) — Russell',
        'DevOps pipeline setup (GitHub Actions, Docker, IaC) — Luc',
        'Server provisioning and deploy automation (Caddy, Nginx, systemd) — Russell',
        'Rust service build (CLI tools, performance-critical components) — Russell',
        'Go service build (CLI tools, microservices, API proxies) — Russell',
      ]"
    />

    <MVPBlock
      scope="CI/CD pipeline for one project + basic server provisioning or Docker setup. Audit (0.5 day), pipeline setup (1.5 days), server config/deploy automation (1 day)."
      :delivery-days="3"
      price-range="CAD $3,600–$4,320"
      assumptions="3 dev days @ CAD $1,200–$1,440/day = CAD $3,600–$4,320"
    />

    <TagList
      :tags="['GitHub Actions', 'Docker', 'Deployer', 'Caddy', 'Nginx', 'systemd', 'Go', 'Rust']"
    />

    <TextBlock
      heading="Ideal Client"
      content="Small dev teams or solo founders shipping manually who need a proper CI/CD pipeline and deploy automation."
    />

    <CTABanner
      text="Start with a discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </ServiceDetailLayout>
</template>
