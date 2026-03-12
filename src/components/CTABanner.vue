<script setup lang="ts">
interface Props {
  text: string
  ctaLabel: string
  ctaUrl: string
}

defineProps<Props>()
</script>

<template>
  <section class="cta-banner section">
    <div class="container cta-inner">
      <h2 class="cta-text">{{ text }}</h2>
      <a :href="ctaUrl" class="btn btn-primary cta-button">{{ ctaLabel }}</a>
    </div>
  </section>
</template>

<style scoped>
.cta-banner {
  background-color: var(--color-bg-alt);
}

.cta-inner {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: var(--space-6);
}

.cta-text {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  margin-bottom: 0;
}

.cta-button {
  padding: var(--space-3) var(--space-8);
}

@media (min-width: 768px) {
  .cta-inner {
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
  }

  .cta-text {
    font-size: var(--font-3xl);
  }
}
</style>
