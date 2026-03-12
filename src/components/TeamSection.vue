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
  <section class="section">
    <div class="container">
      <div class="team-grid">
        <div v-for="member in members" :key="member.name" class="team-card">
          <img :src="member.photo" :alt="member.name" class="team-photo" />
          <h3 class="team-name">{{ member.name }}</h3>
          <p class="team-title">{{ member.title }}</p>
          <p class="team-bio">{{ member.bio }}</p>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.team-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: var(--space-8);
}

.team-card {
  text-align: left;
}

.team-photo {
  width: 5rem;
  height: 5rem;
  border-radius: var(--radius-md);
  object-fit: cover;
  margin-bottom: var(--space-4);
}

.team-name {
  font-size: var(--font-xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-1);
}

.team-title {
  font-size: var(--font-sm);
  color: var(--color-text-muted);
  margin-bottom: var(--space-3);
}

.team-bio {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-normal);
}

@media (min-width: 640px) {
  .team-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>
