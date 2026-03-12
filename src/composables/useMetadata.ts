/**
 * Metadata composable.
 *
 * Injects page metadata into <head> for SEO and social sharing.
 * Fields sourced from website/components.md Page Titles and Descriptions table.
 */

export interface PageMetadata {
  title: string
  description: string
  ogImage?: string
  canonical?: string
}

const TITLE_SUFFIX = ' — NorthOps'
const DEFAULT_OG_IMAGE = '/marketing/og-image.png'
const BASE_URL = 'https://northops.ca'

/**
 * Inject page metadata into document head.
 *
 * Usage:
 *   useMetadata({
 *     title: 'Web Application Engineering — NorthOps',
 *     description: 'Full-stack application builds across Laravel, Rails, React, and Drupal.',
 *     canonical: '/services/web-application-engineering'
 *   })
 */
export function useMetadata(meta: PageMetadata): void {
  document.title = meta.title.includes(TITLE_SUFFIX)
    ? meta.title
    : meta.title + TITLE_SUFFIX

  setMetaTag('description', meta.description)
  setMetaTag('og:title', document.title)
  setMetaTag('og:description', meta.description)
  setMetaTag('og:image', meta.ogImage ?? DEFAULT_OG_IMAGE)
  setMetaTag('og:type', 'website')

  if (meta.canonical) {
    const url = meta.canonical.startsWith('http')
      ? meta.canonical
      : `${BASE_URL}${meta.canonical}`
    setMetaTag('og:url', url)
    setLinkTag('canonical', url)
  }
}

function setMetaTag(name: string, content: string): void {
  const attr = name.startsWith('og:') ? 'property' : 'name'
  let el = document.querySelector(`meta[${attr}="${name}"]`) as HTMLMetaElement | null

  if (!el) {
    el = document.createElement('meta')
    el.setAttribute(attr, name)
    document.head.appendChild(el)
  }

  el.content = content
}

function setLinkTag(rel: string, href: string): void {
  let el = document.querySelector(`link[rel="${rel}"]`) as HTMLLinkElement | null

  if (!el) {
    el = document.createElement('link')
    el.rel = rel
    document.head.appendChild(el)
  }

  el.href = href
}
