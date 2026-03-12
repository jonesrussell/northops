<script setup lang="ts">
interface Props {
  email: string
  location: string
}

defineProps<Props>()
</script>

<template>
  <section class="section">
    <div class="container">
      <dl class="contact-details">
        <div class="contact-item">
          <dt>Email</dt>
          <dd><a :href="`mailto:${email}`">{{ email }}</a></dd>
        </div>
        <div class="contact-item">
          <dt>Location</dt>
          <dd>{{ location }}</dd>
        </div>
      </dl>
    </div>
  </section>
</template>

<style scoped>
.contact-details {
  display: flex;
  gap: var(--space-12);
}

.contact-item dt {
  font-size: var(--font-sm);
  font-weight: var(--weight-medium);
  color: var(--color-text-muted);
  text-transform: uppercase;
  letter-spacing: 0.05em;
  margin-bottom: var(--space-1);
}

.contact-item dd {
  font-size: var(--font-lg);
  color: var(--color-text);
  margin: 0;
}

.contact-item dd a {
  color: var(--color-accent);
}

@media (max-width: 639px) {
  .contact-details {
    flex-direction: column;
    gap: var(--space-6);
  }
}
</style>
