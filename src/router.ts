/**
 * Router — northops.ca
 *
 * Routes map 1:1 to M3-1 site map slugs.
 * Scroll-to-top on every route change.
 * 404 fallback for unmatched routes.
 */
import { createRouter, createWebHistory } from 'vue-router'

import Home from '@/pages/index.vue'
import Services from '@/pages/services/index.vue'
import WebApplicationEngineering from '@/pages/services/web-application-engineering.vue'
import ContentDataPipelines from '@/pages/services/content-data-pipelines.vue'
import DevopsCicd from '@/pages/services/devops-cicd.vue'
import AiEngineering from '@/pages/services/ai-engineering.vue'
import About from '@/pages/about.vue'
import Contact from '@/pages/contact.vue'
import NotFound from '@/pages/404.vue'

const routes = [
  { path: '/', component: Home },
  { path: '/services', component: Services },
  { path: '/services/web-application-engineering', component: WebApplicationEngineering },
  { path: '/services/content-data-pipelines', component: ContentDataPipelines },
  { path: '/services/devops-cicd', component: DevopsCicd },
  { path: '/services/ai-engineering', component: AiEngineering },
  { path: '/about', component: About },
  { path: '/contact', component: Contact },
  { path: '/:pathMatch(.*)*', component: NotFound },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior() {
    return { top: 0 }
  },
})

export default router
