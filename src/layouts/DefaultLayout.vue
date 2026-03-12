<script setup lang="ts">
/**
 * DefaultLayout — northops.ca
 *
 * Header navigation + footer. Used by Home, Services Index, About, Contact.
 * Navigation labels and URLs from website/components.md.
 */
import { computed } from 'vue'

const currentPath = computed(() => window.location.pathname)

const navLinks = [
  { label: 'Services', url: '/services' },
  { label: 'About', url: '/about' },
]

const footerServices = [
  { label: 'Web Application Engineering', url: '/services/web-application-engineering' },
  { label: 'Content & Data Pipelines', url: '/services/content-data-pipelines' },
  { label: 'DevOps & CI/CD', url: '/services/devops-cicd' },
  { label: 'AI Engineering', url: '/services/ai-engineering' },
]

const footerCompany = [
  { label: 'About', url: '/about' },
  { label: 'Contact', url: '/contact' },
]

const footerConnect = [
  { label: 'GitHub', url: 'https://github.com/jonesrussell' },
  { label: 'LinkedIn', url: 'https://linkedin.com/company/northops' },
]
</script>

<template>
  <div class="layout">
    <header class="header">
      <div class="container header-inner">
        <a href="/" class="wordmark">NorthOps</a>
        <nav class="nav" aria-label="Main navigation">
          <a
            v-for="link in navLinks"
            :key="link.url"
            :href="link.url"
            class="nav-link"
            :class="{ 'nav-link-active': currentPath.startsWith(link.url) }"
          >
            {{ link.label }}
          </a>
          <a href="/contact" class="btn btn-primary nav-cta">Get Started</a>
        </nav>
      </div>
    </header>

    <main>
      <slot />
    </main>

    <footer class="footer">
      <div class="container footer-inner">
        <div class="footer-grid">
          <div class="footer-brand">
            <span class="wordmark">NorthOps</span>
            <p class="footer-tagline">Senior engineering. Shipped in days.</p>
            <p class="footer-location">Northern Ontario, Canada</p>
            <p class="footer-email">
              <a href="mailto:contact@northops.ca">contact@northops.ca</a>
            </p>
          </div>

          <div class="footer-col">
            <h4 class="footer-heading">Services</h4>
            <ul class="footer-list">
              <li v-for="link in footerServices" :key="link.url">
                <a :href="link.url">{{ link.label }}</a>
              </li>
            </ul>
          </div>

          <div class="footer-col">
            <h4 class="footer-heading">Company</h4>
            <ul class="footer-list">
              <li v-for="link in footerCompany" :key="link.url">
                <a :href="link.url">{{ link.label }}</a>
              </li>
            </ul>
          </div>

          <div class="footer-col">
            <h4 class="footer-heading">Connect</h4>
            <ul class="footer-list">
              <li v-for="link in footerConnect" :key="link.url">
                <a :href="link.url" target="_blank" rel="noopener">{{ link.label }}</a>
              </li>
            </ul>
          </div>
        </div>

        <div class="footer-legal">
          <a href="/privacy">Privacy Policy</a>
        </div>
      </div>
    </footer>
  </div>
</template>

<style scoped>
.layout {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
}

main {
  flex: 1;
}

/* ── Header ── */
.header {
  border-bottom: 1px solid var(--color-border-light);
  background-color: var(--color-bg-white);
}

.header-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: var(--space-16);
}

.wordmark {
  font-family: var(--font-heading);
  font-size: var(--font-xl);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  text-decoration: none;
}

.nav {
  display: flex;
  align-items: center;
  gap: var(--space-8);
}

.nav-link {
  font-size: var(--font-sm);
  font-weight: var(--weight-medium);
  color: var(--color-text-secondary);
  text-decoration: none;
  transition: color var(--transition-fast);
}

.nav-link:hover {
  color: var(--color-text);
}

.nav-link-active {
  color: var(--color-text);
}

.nav-cta {
  font-size: var(--font-sm);
  padding: var(--space-2) var(--space-4);
}

/* ── Footer ── */
.footer {
  border-top: 1px solid var(--color-border-light);
  background-color: var(--color-bg-white);
  padding-top: var(--space-16);
  padding-bottom: var(--space-8);
}

.footer-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: var(--space-8);
}

.footer-brand {
  margin-bottom: var(--space-4);
}

.footer-tagline {
  font-size: var(--font-sm);
  color: var(--color-text-secondary);
  margin-bottom: var(--space-2);
}

.footer-location,
.footer-email {
  font-size: var(--font-sm);
  color: var(--color-text-muted);
  margin-bottom: var(--space-1);
}

.footer-heading {
  font-family: var(--font-heading);
  font-size: var(--font-sm);
  font-weight: var(--weight-semibold);
  color: var(--color-text);
  margin-bottom: var(--space-3);
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.footer-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-list li {
  margin-bottom: var(--space-2);
}

.footer-list a {
  font-size: var(--font-sm);
  color: var(--color-text-secondary);
  text-decoration: none;
}

.footer-list a:hover {
  color: var(--color-accent);
}

.footer-legal {
  margin-top: var(--space-12);
  padding-top: var(--space-6);
  border-top: 1px solid var(--color-border-light);
  font-size: var(--font-xs);
  color: var(--color-text-muted);
}

.footer-legal a {
  color: var(--color-text-muted);
  text-decoration: none;
}

.footer-legal a:hover {
  color: var(--color-accent);
}

/* ── Responsive ── */
@media (min-width: 768px) {
  .footer-grid {
    grid-template-columns: 2fr 1fr 1fr 1fr;
  }
}
</style>
