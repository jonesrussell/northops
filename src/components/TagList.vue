<script setup lang="ts">
interface Props {
  tags: string[]
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <h2 class="tag-heading">Stack</h2>
      <ul class="tag-list">
        <li v-for="tag in tags" :key="tag" class="tag-item">{{ tag }}</li>
      </ul>
    </div>
  </section>
</template>

<style scoped>
.tag-heading {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-4);
}

.tag-list {
  display: flex;
  flex-wrap: wrap;
  gap: var(--space-2);
  list-style: none;
  padding: 0;
  margin: 0;
}

.tag-item {
  font-family: var(--font-mono);
  font-size: var(--font-sm);
  padding: var(--space-1) var(--space-3);
  background-color: var(--color-bg-alt);
  border: 1px solid var(--color-border-light);
  border-radius: var(--radius-sm);
  color: var(--color-text-secondary);
  margin: 0;
}
</style>
