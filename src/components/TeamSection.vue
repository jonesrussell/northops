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
  <!-- TeamSection: compact team member cards with photo, name, title, and short bio -->
</template>
