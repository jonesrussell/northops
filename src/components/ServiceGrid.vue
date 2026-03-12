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
  <!-- ServiceGrid: card grid displaying service lines with optional pricing -->
</template>
