<script setup lang="ts">
interface Step {
  number: number
  title: string
  description: string
}

interface Props {
  steps: Step[]
}

defineProps<Props>()
</script>

<template>
  <section class="section section-alt">
    <div class="container">
      <ol class="steps-list">
        <li v-for="step in steps" :key="step.number" class="step-item">
          <span class="step-number">{{ step.number }}</span>
          <div class="step-content">
            <h3 class="step-title">{{ step.title }}</h3>
            <p class="step-desc">{{ step.description }}</p>
          </div>
        </li>
      </ol>
    </div>
  </section>
</template>

<style scoped>
.steps-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: flex;
  flex-direction: column;
  gap: var(--space-8);
  max-width: var(--container-narrow);
}

.step-item {
  display: flex;
  gap: var(--space-4);
  align-items: flex-start;
  margin: 0;
}

.step-number {
  flex-shrink: 0;
  width: var(--space-10);
  height: var(--space-10);
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: var(--font-heading);
  font-size: var(--font-lg);
  font-weight: var(--weight-semibold);
  color: var(--color-accent);
  background-color: var(--color-accent-light);
  border-radius: var(--radius-md);
}

.step-content {
  flex: 1;
}

.step-title {
  font-size: var(--font-lg);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-1);
}

.step-desc {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
}
</style>
