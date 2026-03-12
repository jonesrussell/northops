<script setup lang="ts">
interface ProofPoint {
  title: string
  description: string
}

interface Props {
  items: ProofPoint[]
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <ol class="proof-list">
        <li v-for="(item, index) in items" :key="index" class="proof-item">
          <strong class="proof-title">{{ item.title }}</strong>
          <span class="proof-desc">{{ item.description }}</span>
        </li>
      </ol>
    </div>
  </section>
</template>

<style scoped>
.proof-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: var(--space-6);
  max-width: var(--container-narrow);
}

.proof-item {
  margin: 0;
}

.proof-title {
  display: block;
  font-size: var(--font-lg);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  margin-bottom: var(--space-2);
}

.proof-desc {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
}
</style>
