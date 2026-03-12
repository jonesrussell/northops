<script setup lang="ts">
/**
 * ServiceDetailLayout — northops.ca
 *
 * Extends DefaultLayout with service-specific section spacing.
 * Used by all 4 service detail pages.
 */
import DefaultLayout from './DefaultLayout.vue'
</script>

<template>
  <DefaultLayout>
    <div class="service-detail">
      <slot />
    </div>
  </DefaultLayout>
</template>

<style scoped>
.service-detail {
  padding-bottom: var(--space-8);
}

.service-detail :deep(.section:first-child) {
  padding-top: 0;
}
</style>
