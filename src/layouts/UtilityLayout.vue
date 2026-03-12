<script setup lang="ts">
/**
 * UtilityLayout — northops.ca
 *
 * Minimal layout for 404 and Privacy pages.
 * Centered content, navigation links, no full header/footer.
 */
</script>

<template>
  <div class="utility-layout">
    <header class="utility-header">
      <a href="/" class="wordmark">NorthOps</a>
    </header>

    <main class="utility-main">
      <slot />
    </main>
  </div>
</template>

<style scoped>
.utility-layout {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  background-color: var(--color-bg);
}

.utility-header {
  padding: var(--space-6) var(--container-padding);
}

.wordmark {
  font-family: var(--font-heading);
  font-size: var(--font-xl);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  text-decoration: none;
}

.utility-main {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  padding: var(--space-8) var(--container-padding);
  text-align: center;
}

.utility-main :deep(h1) {
  font-size: var(--font-4xl);
  text-align: center;
  margin-bottom: var(--space-4);
}

.utility-main :deep(p) {
  font-size: var(--font-lg);
  color: var(--color-text-secondary);
  margin-bottom: var(--space-8);
  max-width: var(--container-narrow);
}

.utility-main :deep(nav) {
  display: flex;
  gap: var(--space-6);
}

.utility-main :deep(nav a) {
  font-size: var(--font-base);
  font-weight: var(--weight-medium);
  color: var(--color-accent);
}
</style>
