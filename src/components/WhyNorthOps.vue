<script setup lang="ts">
import ProofPoints from './ProofPoints.vue'

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
  <ProofPoints :items="items" />
</template>
