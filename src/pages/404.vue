<script setup lang="ts">
/**
 * 404 — Page Not Found
 *
 * Template: Utility (M3-2)
 * Content sourced from website/components.md 404 section
 */
import { useMetadata } from '@/composables/useMetadata'

useMetadata({
  title: 'Page Not Found — NorthOps',
  description: 'The page you\'re looking for doesn\'t exist or has moved.',
})
</script>

<template>
  <UtilityLayout>
    <h1>Page not found.</h1>
    <p>The page you're looking for doesn't exist or has moved.</p>
    <nav>
      <a href="/">Home</a>
      <a href="/services">Services</a>
      <a href="/contact">Contact</a>
    </nav>
  </UtilityLayout>
</template>
