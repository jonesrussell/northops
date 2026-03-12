<script setup lang="ts">
/**
 * About — northops.ca/about
 *
 * Template: About Page Template (M3-2)
 * Sections: TextBlock → TeamBios → BulletList → CTABanner
 */
import BulletList from '@/components/BulletList.vue'
import CTABanner from '@/components/CTABanner.vue'
import TeamBios from '@/components/TeamBios.vue'
import TextBlock from '@/components/TextBlock.vue'
import { useMetadata } from '@/composables/useMetadata'

useMetadata({
  title: 'About — NorthOps',
  description: 'Two senior engineers based in Northern Ontario. Backend, frontend, infrastructure, and AI — no layers between us and the code.',
  canonical: '/about',
})
</script>

<template>
  <DefaultLayout>
    <TextBlock
      content="NorthOps started with a straightforward observation: most teams that need senior engineering work done have bad options. Agencies are expensive and layered — by the time the work reaches an engineer, it has passed through account managers, project coordinators, and scoping committees. Freelancers are fast but unreliable — narrow stack coverage, unpredictable availability, and no one to call when things go wrong. Internal hires solve the quality problem but take months to recruit and commit the company to a full-time salary for what might be a two-week project.

Russell and Luc built NorthOps to be the option that doesn't exist yet: a two-person senior engineering company that delivers across the full stack — backend, frontend, infrastructure, CI/CD, and AI — with no layers between the client and the work.

The company is based in Northern Ontario. The name reflects the geography and the approach — direct, grounded, built for conditions that don't tolerate waste.

NorthOps is senior-only because the work demands it. Architecture decisions, production deploys, legacy modernization, AI integration — these are not tasks you hand to a junior and review later. Every hour of NorthOps time is a senior engineer applying judgement to a real problem. That's the product."
    />

    <TeamBios
      :members="[
        {
          name: 'Russell Jones',
          title: 'Senior Engineer & Co-Founder',
          photo: '/images/team/russell.jpg',
          bio: 'Russell is a senior software engineer and solutions architect with deep experience across PHP, Laravel, Drupal, Go, Rust, and platform infrastructure. He has worked as Principal Solutions Architect at Web Networks, where he builds and governs community platforms, leads technical architecture, and shapes narrative for projects including Minoo, North Cloud, and Waaseyaa. His work spans marketing, mining, real estate, and SaaS — always focused on the architecture and pipelines that make content and data flow reliably.\n\nRussell\'s engineering focus is backend systems, content pipelines, CMS architecture, and deploy automation. He builds the infrastructure that content-driven products depend on: ingestion, transformation, publishing, CI/CD, and server provisioning. He has worked across northern and southern Ontario, London (UK), and Elko (Nevada), bringing a grounded perspective shaped by real operational environments — not theoretical frameworks.\n\nRussell is known for explicit, actionable, community-grounded communication. He rejects abstract and performative language in favour of direct, technical clarity. He brings a strong focus on Indigenous data sovereignty and AI alignment — ensuring that the systems he builds respect the communities they serve. At NorthOps, Russell leads Web Application Engineering, Content & Data Pipelines, and DevOps & CI/CD delivery.',
        },
        {
          name: 'Luc Hebert',
          title: 'Senior Engineer & Co-Founder',
          photo: '/images/team/luc.jpg',
          bio: 'Luc is a senior engineer specializing in TypeScript, React, Ruby on Rails, Python, DevOps, and AI integration. He brings deep experience building frontend applications, TypeScript APIs, and production-grade AI features including LLM workflows, embeddings, RAG pipelines, and agent automation.\n\nHis engineering focus is the interface layer and the intelligence layer: the applications people use and the AI capabilities that make those applications smarter. At NorthOps, Luc leads AI Engineering delivery and co-leads Web Application Engineering and DevOps & CI/CD alongside Russell.',
        },
      ]"
    />

    <BulletList
      heading="Principles"
      :items="[
        'Senior engineers should do senior work.',
        'Speed comes from clarity, not shortcuts.',
        'Overhead is a cost, not a value-add.',
        'The first engagement should be easy.',
        'Say what you do, do what you say.',
        'AI is engineering, not magic.',
        'Northern means grounded.',
      ]"
    />

    <CTABanner
      text="Work with us."
      cta-label="Get Started"
      cta-url="/contact"
    />
  </DefaultLayout>
</template>
