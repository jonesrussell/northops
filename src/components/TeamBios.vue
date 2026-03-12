<script setup lang="ts">
interface TeamMember {
  name: string
  title: string
  photo: string
  bio: string
}

interface Props {
  members: TeamMember[]
}

defineProps<Props>()
</script>

<template>
  <!-- TeamBios: extended team profiles with photo, name, title, and multi-paragraph bio -->
</template>
