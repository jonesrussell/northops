<script setup lang="ts">
interface Props {
  text: string
}

defineProps<Props>()
</script>

<template>
  <section class="page-intro section">
    <div class="container">
      <p class="intro-text">{{ text }}</p>
    </div>
  </section>
</template>

<style scoped>
.page-intro {
  padding-bottom: var(--space-8);
}

.intro-text {
  font-size: var(--font-xl);
  line-height: var(--leading-normal);
  color: var(--color-text-secondary);
  max-width: 55ch;
}

@media (min-width: 768px) {
  .intro-text {
    font-size: var(--font-2xl);
  }
}
</style>
