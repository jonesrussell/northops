<script setup lang="ts">
interface Props {
  scope: string
  deliveryDays: number
  priceRange: string
  assumptions: string
}

defineProps<Props>()
</script>

<template>
  <section class="section section-alt">
    <div class="container">
      <div class="mvp-block">
        <h2 class="mvp-heading">MVP Engagement</h2>
        <p class="mvp-scope">{{ scope }}</p>
        <dl class="mvp-details">
          <div class="mvp-detail">
            <dt>Delivery</dt>
            <dd>{{ deliveryDays }} days</dd>
          </div>
          <div class="mvp-detail">
            <dt>Price</dt>
            <dd>{{ priceRange }}</dd>
          </div>
        </dl>
        <p class="mvp-assumptions">{{ assumptions }}</p>
      </div>
    </div>
  </section>
</template>

<style scoped>
.mvp-block {
  max-width: var(--container-narrow);
}

.mvp-heading {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-4);
}

.mvp-scope {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
  margin-bottom: var(--space-6);
}

.mvp-details {
  display: flex;
  gap: var(--space-12);
  margin-bottom: var(--space-4);
}

.mvp-detail dt {
  font-size: var(--font-sm);
  font-weight: var(--weight-medium);
  color: var(--color-text-muted);
  text-transform: uppercase;
  letter-spacing: 0.05em;
  margin-bottom: var(--space-1);
}

.mvp-detail dd {
  font-size: var(--font-2xl);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  margin: 0;
}

.mvp-assumptions {
  font-size: var(--font-sm);
  color: var(--color-text-muted);
  font-family: var(--font-mono);
}

@media (max-width: 639px) {
  .mvp-details {
    flex-direction: column;
    gap: var(--space-4);
  }
}
</style>
