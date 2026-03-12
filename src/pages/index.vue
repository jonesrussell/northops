<script setup lang="ts">
/**
 * Home Page — northops.ca
 *
 * Template: Home Page Template (M3-2)
 * Sections: HeroSection → ServiceGrid → WhyNorthOps → ProcessSteps → TeamSection → CTABanner
 */
import CTABanner from '@/components/CTABanner.vue'
import HeroSection from '@/components/HeroSection.vue'
import ProcessSteps from '@/components/ProcessSteps.vue'
import ServiceGrid from '@/components/ServiceGrid.vue'
import TeamSection from '@/components/TeamSection.vue'
import WhyNorthOps from '@/components/WhyNorthOps.vue'
import { useMetadata } from '@/composables/useMetadata'

useMetadata({
  title: 'NorthOps — Senior Engineering. Shipped in Days.',
  description: 'Two senior engineers delivering production-grade web applications, pipelines, DevOps, and AI integration. Fixed-price MVPs starting at CAD $3,600.',
  canonical: '/',
})
</script>

<template>
  <DefaultLayout>
    <HeroSection
      headline="Senior engineering. Shipped in days."
      subhead="Two senior engineers delivering production-grade web applications, pipelines, DevOps, and AI integration. Fixed-price MVPs starting at CAD $3,600. No juniors, no overhead, no lock-in."
      cta-label="Get Started"
      cta-url="/contact"
    />

    <ServiceGrid
      :services="[
        { name: 'Web Application Engineering', description: 'Full-stack builds and rewrites across Laravel, Rails, React, and Drupal. From admin panels to customer portals — scoped, built, and deployed in days.', url: '/services/web-application-engineering' },
        { name: 'Content & Data Pipelines', description: 'Systems that move content and data from source to destination. Ingestion, transformation, publishing — automated and reliable. CMS migrations, ETL pipelines, and content workflows.', url: '/services/content-data-pipelines' },
        { name: 'DevOps & CI/CD', description: 'Deployment pipelines, server provisioning, and automation. GitHub Actions, Docker, Caddy, Nginx — set up by engineers who have done it before. Your team ships daily instead of weekly.', url: '/services/devops-cicd' },
        { name: 'AI Engineering', description: 'LLM integration, RAG search, embeddings, and agent workflows — built into your existing product. Production-grade features delivered by a senior engineer, not a research team.', url: '/services/ai-engineering' },
      ]"
    />

    <WhyNorthOps
      :items="[
        { title: 'Senior-only, every time.', description: 'Every hour you pay for is a senior engineer writing production code. No juniors, no interns, no supervised work. Clients don\'t pay for learning curves.' },
        { title: 'Full-stack coverage without handoffs.', description: 'Backend (Laravel, Drupal, Rails, Go, Rust), frontend (React, TypeScript), infrastructure (CI/CD, Docker, servers), and AI (LLM, RAG, agents) — from one two-person team. No coordination between vendors.' },
        { title: 'Days, not weeks.', description: 'MVPs scoped at 3–10 days. Fixed-price engagements with explicit deliverables. Clients see results before most agencies finish their discovery phase.' },
        { title: 'No overhead tax.', description: 'No project managers, account managers, or status meetings. Direct access to the engineers doing the work. The client pays for engineering, not coordination.' },
        { title: 'AI capability built in.', description: 'Production-grade AI integration (RAG, embeddings, agent workflows) is a core service line, not an experiment. Most agencies and freelancers cannot offer this.' },
      ]"
    />

    <ProcessSteps
      :steps="[
        { number: 1, title: 'Discovery call', description: 'Free 15–30 minute call. Tell us what you need built. We\'ll tell you if we can help.' },
        { number: 2, title: 'Scope', description: 'We define deliverables, timeline, and price. You know exactly what you\'re getting before any money changes hands.' },
        { number: 3, title: 'SOW + payment', description: 'Simple 1–2 page statement of work. 50% upfront via e-transfer. Work begins.' },
        { number: 4, title: 'Build', description: 'Senior engineers build. Direct access, daily check-ins if you want them. The engineers who scoped the work are the engineers who build it.' },
        { number: 5, title: 'Deliver', description: 'We deploy, you review against acceptance criteria. Remaining 50% on completion. Done.' },
      ]"
    />

    <TeamSection
      :members="[
        { name: 'Russell Jones', title: 'Senior Engineer & Co-Founder', photo: '/images/team/russell.jpg', bio: 'Backend systems, content pipelines, and deploy automation across Laravel, Drupal, Go, and Rust.' },
        { name: 'Luc Hebert', title: 'Senior Engineer & Co-Founder', photo: '/images/team/luc.jpg', bio: 'Frontend applications, TypeScript APIs, and AI integrations across React, Rails, and Python.' },
      ]"
    />

    <CTABanner
      text="Ready to start? Book a free discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </DefaultLayout>
</template>
