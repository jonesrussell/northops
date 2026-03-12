<script setup lang="ts">
interface Props {
  heading?: string
  content: string
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <h2 v-if="heading" class="text-heading">{{ heading }}</h2>
      <div class="text-content">
        <p v-for="(paragraph, index) in content.split('\n\n')" :key="index">
          {{ paragraph }}
        </p>
      </div>
    </div>
  </section>
</template>

<style scoped>
.text-heading {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-6);
}

.text-content {
  max-width: var(--container-narrow);
}

.text-content p {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-relaxed);
  margin-bottom: var(--space-4);
}

.text-content p:last-child {
  margin-bottom: 0;
}
</style>
