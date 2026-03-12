<script setup lang="ts">
interface FormField {
  name: string
  type: 'text' | 'email' | 'textarea'
  required: boolean
  label: string
}

interface Props {
  fields: FormField[]
  submitLabel: string
  successMessage: string
  errorMessage: string
}

defineProps<Props>()
</script>

<template>
  <!-- ContactForm: form with field rendering, validation, submission, and success/error states -->
</template>
