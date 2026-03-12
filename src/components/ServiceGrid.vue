<script setup lang="ts">
interface Service {
  name: string
  description: string
  url: string
  price?: string
}

interface Props {
  services: Service[]
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <div class="grid grid-2 service-grid">
        <a
          v-for="service in services"
          :key="service.url"
          :href="service.url"
          class="service-card"
        >
          <h3 class="service-name">{{ service.name }}</h3>
          <p class="service-desc">{{ service.description }}</p>
          <span v-if="service.price" class="service-price">{{ service.price }}</span>
        </a>
      </div>
    </div>
  </section>
</template>

<style scoped>
.service-grid {
  gap: var(--space-6);
}

.service-card {
  display: block;
  padding: var(--space-8);
  background-color: var(--color-bg-white);
  border: 1px solid var(--color-border-light);
  border-radius: var(--radius-md);
  text-decoration: none;
  transition: border-color var(--transition-fast);
}

.service-card:hover {
  border-color: var(--color-accent);
}

.service-name {
  font-size: var(--font-xl);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  margin-bottom: var(--space-3);
}

.service-desc {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
  margin-bottom: var(--space-4);
}

.service-price {
  font-size: var(--font-sm);
  font-weight: var(--weight-medium);
  color: var(--color-accent);
}

@media (min-width: 1024px) {
  .service-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>
