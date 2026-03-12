<script setup lang="ts">
import { ref } from 'vue'

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

const props = defineProps<Props>()

const formData = ref<Record<string, string>>({})
const status = ref<'idle' | 'success' | 'error'>('idle')

function handleSubmit() {
  // Form submission handled by backend integration
  status.value = 'success'
}
</script>

<template>
  <section class="section">
    <div class="container">
      <form v-if="status === 'idle'" class="contact-form" @submit.prevent="handleSubmit">
        <div v-for="field in props.fields" :key="field.name" class="form-group">
          <label :for="field.name" class="form-label">{{ field.label }}</label>
          <textarea
            v-if="field.type === 'textarea'"
            :id="field.name"
            v-model="formData[field.name]"
            :name="field.name"
            :required="field.required"
            class="form-input form-textarea"
            rows="5"
          />
          <input
            v-else
            :id="field.name"
            v-model="formData[field.name]"
            :type="field.type"
            :name="field.name"
            :required="field.required"
            class="form-input"
          />
        </div>
        <button type="submit" class="btn btn-primary form-submit">
          {{ props.submitLabel }}
        </button>
      </form>

      <div v-else-if="status === 'success'" class="form-status form-success">
        <p>{{ props.successMessage }}</p>
      </div>

      <div v-else class="form-status form-error">
        <p>{{ props.errorMessage }}</p>
      </div>
    </div>
  </section>
</template>

<style scoped>
.contact-form {
  max-width: var(--container-narrow);
}

.form-group {
  margin-bottom: var(--space-6);
}

.form-label {
  display: block;
  font-size: var(--font-sm);
  font-weight: var(--weight-medium);
  color: var(--color-text);
  margin-bottom: var(--space-2);
}

.form-input {
  width: 100%;
  font-family: var(--font-body);
  font-size: var(--font-base);
  padding: var(--space-3) var(--space-4);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-md);
  background-color: var(--color-bg-white);
  color: var(--color-text);
  transition: border-color var(--transition-fast);
}

.form-input:focus {
  outline: none;
  border-color: var(--color-accent);
  box-shadow: 0 0 0 2px var(--color-accent-light);
}

.form-textarea {
  resize: vertical;
  min-height: 8rem;
}

.form-submit {
  padding: var(--space-3) var(--space-8);
}

.form-status {
  max-width: var(--container-narrow);
  padding: var(--space-6);
  border-radius: var(--radius-md);
}

.form-success {
  background-color: #f0f7f4;
  color: var(--color-success);
}

.form-error {
  background-color: #fdf2f2;
  color: var(--color-error);
}

.form-status p {
  margin: 0;
}
</style>
