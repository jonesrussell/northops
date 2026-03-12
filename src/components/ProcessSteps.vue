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
  <!-- ProcessSteps: ordered 5-step engagement sequence (discovery → scope → SOW → build → deliver) -->
</template>
