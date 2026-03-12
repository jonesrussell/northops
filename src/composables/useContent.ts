/**
 * Content loader composable.
 *
 * Loads pre-built JSON content files generated from website/*.md at build time.
 * Each JSON file contains { meta, sections } matching M3-2 content structure.
 */

export interface ContentMeta {
  title: string
  description: string
  slug: string
  ogImage?: string
}

export interface ContentFile<T = Record<string, unknown>> {
  meta: ContentMeta
  sections: T
}

/**
 * Load content by slug. Content JSON is generated at build time from
 * website/*.md via the content ingestion pipeline defined in M4-1.
 *
 * Usage:
 *   const content = useContent<HomePageSections>('home')
 */
export function useContent<T = Record<string, unknown>>(slug: string): ContentFile<T> {
  const modules = import.meta.glob<ContentFile<T>>('@/content/*.json', { eager: true })
  const key = `/src/content/${slug}.json`
  const content = modules[key]

  if (!content) {
    throw new Error(`Content not found for slug: ${slug}`)
  }

  return content
}
