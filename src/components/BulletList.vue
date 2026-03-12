<script setup lang="ts">
interface Props {
  heading?: string
  items: string[]
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <h2 v-if="heading" class="list-heading">{{ heading }}</h2>
      <ul class="bullet-list">
        <li v-for="(item, index) in items" :key="index" class="bullet-item">
          {{ item }}
        </li>
      </ul>
    </div>
  </section>
</template>

<style scoped>
.list-heading {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-6);
}

.bullet-list {
  list-style: none;
  padding: 0;
  margin: 0;
  max-width: var(--container-narrow);
}

.bullet-item {
  position: relative;
  padding-left: var(--space-6);
  margin-bottom: var(--space-3);
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
}

.bullet-item::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0.65em;
  width: 6px;
  height: 6px;
  background-color: var(--color-accent);
  border-radius: 50%;
}

.bullet-item:last-child {
  margin-bottom: 0;
}
</style>
