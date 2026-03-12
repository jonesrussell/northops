<script setup lang="ts">
interface Props {
  headline: string
  subhead: string
  ctaLabel: string
  ctaUrl: string
}

defineProps<Props>()
</script>

<template>
  <section class="hero section">
    <div class="container">
      <h1 class="hero-headline">{{ headline }}</h1>
      <p class="hero-subhead">{{ subhead }}</p>
      <a v-if="ctaLabel" :href="ctaUrl" class="btn btn-primary hero-cta">
        {{ ctaLabel }}
      </a>
    </div>
  </section>
</template>

<style scoped>
.hero {
  padding-top: var(--space-20);
  padding-bottom: var(--space-20);
}

.hero-headline {
  font-size: var(--font-4xl);
  font-weight: var(--weight-semibold);
  line-height: var(--leading-tight);
  margin-bottom: var(--space-6);
  max-width: 20ch;
}

.hero-subhead {
  font-size: var(--font-lg);
  line-height: var(--leading-normal);
  color: var(--color-text-secondary);
  margin-bottom: var(--space-8);
  max-width: 55ch;
}

.hero-cta {
  font-size: var(--font-base);
  padding: var(--space-3) var(--space-8);
}

/* M2-2: "centered text reserved for hero headlines and nothing else" */
@media (min-width: 768px) {
  .hero {
    padding-top: var(--space-32);
    padding-bottom: var(--space-24);
  }

  .hero-headline {
    font-size: var(--font-5xl);
  }

  .hero-subhead {
    font-size: var(--font-xl);
  }
}
</style>
