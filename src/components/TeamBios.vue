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
      <div class="bios-list">
        <article v-for="member in members" :key="member.name" class="bio-card">
          <div class="bio-header">
            <img :src="member.photo" :alt="member.name" class="bio-photo" />
            <div>
              <h3 class="bio-name">{{ member.name }}</h3>
              <p class="bio-title">{{ member.title }}</p>
            </div>
          </div>
          <div class="bio-content">
            <p v-for="(paragraph, index) in member.bio.split('\n\n')" :key="index">
              {{ paragraph }}
            </p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<style scoped>
.bios-list {
  display: flex;
  flex-direction: column;
  gap: var(--space-12);
}

.bio-header {
  display: flex;
  align-items: center;
  gap: var(--space-4);
  margin-bottom: var(--space-6);
}

.bio-photo {
  width: 4rem;
  height: 4rem;
  border-radius: var(--radius-md);
  object-fit: cover;
}

.bio-name {
  font-size: var(--font-xl);
  font-weight: var(--weight-semibold);
  margin-bottom: var(--space-1);
}

.bio-title {
  font-size: var(--font-sm);
  color: var(--color-text-muted);
  margin: 0;
}

.bio-content {
  max-width: var(--container-narrow);
}

.bio-content p {
  font-size: var(--font-base);
  color: var(--color-text-secondary);
  line-height: var(--leading-relaxed);
  margin-bottom: var(--space-4);
}

.bio-content p:last-child {
  margin-bottom: 0;
}
</style>
