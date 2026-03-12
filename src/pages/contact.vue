<script setup lang="ts">
/**
 * Contact — northops.ca/contact
 *
 * Template: Contact Page Template (M3-2)
 * Sections: PageIntro → ContactForm → ContactInfo → TextBlock → CTABanner
 */
import { useMetadata } from '@/composables/useMetadata'
import PageIntro from '@/components/PageIntro.vue'
import ContactForm from '@/components/ContactForm.vue'
import ContactInfo from '@/components/ContactInfo.vue'
import TextBlock from '@/components/TextBlock.vue'
import CTABanner from '@/components/CTABanner.vue'

useMetadata({
  title: 'Contact — NorthOps',
  description: 'Book a free discovery call or send us a message. Senior engineering, scoped and priced before work begins.',
  canonical: '/contact',
})
</script>

<template>
  <DefaultLayout>
    <PageIntro
      text="Let's talk about your project."
    />

    <ContactForm
      :fields="[
        { name: 'name', type: 'text', required: true, label: 'Your name' },
        { name: 'email', type: 'email', required: true, label: 'Email address' },
        { name: 'message', type: 'textarea', required: true, label: 'Tell us about your project' },
      ]"
      submit-label="Send Message"
      success-message="Message sent. We'll reply within one business day."
      error-message="Something went wrong. Please email us directly at contact@northops.ca."
    />

    <ContactInfo
      email="contact@northops.ca"
      location="Northern Ontario, Canada"
    />

    <TextBlock
      content="Free 15–30 minute discovery call. No pitch — just understanding your problem.

Tell us what you need built. We'll tell you if we can help, what it would cost, and how fast we can deliver. If it's a fit, we send a simple SOW and work begins. If not, you'll still leave with a clear picture of your options."
    />

    <CTABanner
      text="Book a discovery call."
      cta-label="Book a Discovery Call"
      cta-url="/contact"
    />
  </DefaultLayout>
</template>
