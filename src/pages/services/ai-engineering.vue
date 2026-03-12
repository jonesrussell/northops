<script setup lang="ts">
/**
 * AI Engineering — northops.ca/services/ai-engineering
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
  title: 'AI Engineering — NorthOps',
  description: 'LLM integration, RAG search, embeddings, and agent workflows. Production-grade AI features starting at CAD $7,800.',
  canonical: '/services/ai-engineering',
})
</script>

<template>
  <ServiceDetailLayout>
    <HeroSection
      headline="AI Engineering"
      subhead="Integrate LLMs, embeddings, and AI-powered automation into your existing product — not a science project, but production-grade engineering with clear deliverables."
      cta-label=""
      cta-url=""
    />

    <BulletList
      heading="Deliverables"
      :items="[
        'AI/ML integration (LLM workflows, embeddings, RAG pipelines) — Luc',
        'AI-assisted tooling and automation (Claude API, agent workflows) — Luc',
        'Python scripting and automation (data processing, ETL) — Luc',
        'Technical planning and architecture documentation — Luc',
        'Backend infrastructure supporting AI features — Russell',
      ]"
    />

    <MVPBlock
      scope="Single AI feature (RAG search, LLM-powered summarization, or agent workflow). Feasibility review (0.5 day), architecture (0.5 day), implementation (3 days), testing and integration (1 day)."
      :delivery-days="5"
      price-range="CAD $7,800–$9,360"
      assumptions="5 dev days @ CAD $1,560–$1,872/day (standard rate + 30% AI premium) = CAD $7,800–$9,360"
    />

    <TagList
      :tags="['Python', 'TypeScript', 'React', 'Node.js', 'Docker', 'GitHub Actions']"
    />

    <TextBlock
      heading="Ideal Client"
      content="Startups or SMBs with an existing product that want to add a specific AI capability without hiring an ML team."
    />

    <CTABanner
      text="Start with a discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </ServiceDetailLayout>
</template>
