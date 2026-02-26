<script setup lang="ts">
import { Head, Link, useForm } from '@inertiajs/vue3';
import InputError from '@/components/InputError.vue';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { home } from '@/routes';

const form = useForm({
    email: '',
    message: '',
});

const props = defineProps<{ status?: string }>();
</script>

<template>
    <Head title="Contact — NorthOps" />
    <div class="contact-page">
        <nav>
            <div class="container nav-inner">
                <Link :href="home()" class="logo">North<span>Ops</span></Link>
                <ul class="nav-links">
                    <li><Link :href="home()" class="nav-link">Home</Link></li>
                </ul>
            </div>
        </nav>

        <main class="section">
            <div class="container contact-main">
                <div class="contact-header">
                    <div class="tag">Contact</div>
                    <h1>Get in touch</h1>
                    <p class="contact-desc">
                        Send us a message and we’ll get back to you as soon as we can.
                    </p>
                </div>

                <div v-if="props.status" class="contact-status">
                    {{ props.status }}
                </div>

                <form
                    class="contact-form"
                    @submit.prevent="form.post('/contact')"
                >
                    <div class="form-group">
                        <Label for="email" class="form-label">Email</Label>
                        <Input
                            id="email"
                            v-model="form.email"
                            type="email"
                            name="email"
                            required
                            autocomplete="email"
                            placeholder="you@example.com"
                            class="form-input"
                        />
                        <InputError :message="form.errors.email" />
                    </div>

                    <div class="form-group">
                        <Label for="message" class="form-label">Message</Label>
                        <textarea
                            id="message"
                            v-model="form.message"
                            name="message"
                            required
                            rows="6"
                            placeholder="Your message..."
                            class="form-textarea"
                        />
                        <InputError :message="form.errors.message" />
                    </div>

                    <Button
                        type="submit"
                        class="btn-submit"
                        :disabled="form.processing"
                    >
                        {{ form.processing ? 'Sending…' : 'Send message' }}
                    </Button>
                </form>
            </div>
        </main>

        <footer>
            <div class="container footer-inner">
                <Link :href="home()" class="footer-logo">North<span>Ops</span></Link>
                <div class="footer-copy">© 2026 NorthOps · northops.ca</div>
            </div>
        </footer>
    </div>
</template>

<style scoped>
.contact-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', system-ui, sans-serif; font-size: 16px; line-height: 1.6; color: var(--no-slate); background: var(--no-white); min-height: 100vh; display: flex; flex-direction: column; }
.contact-page :deep(nav) { position: sticky; top: 0; z-index: 100; background: rgba(15,23,42,0.96); backdrop-filter: blur(8px); border-bottom: 1px solid rgba(255,255,255,0.08); }
.contact-page :deep(.container) { max-width: 1100px; margin: 0 auto; padding: 0 24px; }
.contact-page :deep(.nav-inner) { display: flex; align-items: center; justify-content: space-between; height: 64px; }
.contact-page :deep(.logo) { font-size: 20px; font-weight: 800; color: var(--no-white); text-decoration: none; letter-spacing: -0.02em; }
.contact-page :deep(.logo span) { color: var(--no-blue); }
.contact-page :deep(.nav-links) { display: flex; align-items: center; gap: 32px; list-style: none; }
.contact-page :deep(.nav-link) { color: rgba(255,255,255,0.7); text-decoration: none; font-size: 14px; font-weight: 500; }
.contact-page :deep(.nav-link:hover) { color: var(--no-white); }
.contact-page :deep(.section) { padding: 96px 0; flex: 1; }
.contact-main { max-width: 520px; }
.contact-header { margin-bottom: 32px; }
.contact-page :deep(.tag) { display: inline-block; font-size: 12px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; color: var(--no-blue); background: var(--no-blue-l); padding: 4px 12px; border-radius: 100px; margin-bottom: 16px; }
.contact-page :deep(.contact-header h1) { font-size: clamp(26px,4vw,38px); font-weight: 800; color: var(--no-navy); letter-spacing: -0.025em; margin-bottom: 12px; }
.contact-desc { font-size: 17px; color: var(--no-gray); }
.contact-status { margin-bottom: 24px; padding: 12px 16px; background: #dcfce7; color: #166534; border-radius: 8px; font-size: 14px; }
.contact-form { display: flex; flex-direction: column; gap: 20px; }
.form-group { display: flex; flex-direction: column; gap: 6px; }
.contact-page :deep(.form-label) { font-size: 14px; font-weight: 600; color: var(--no-navy); }
.contact-page :deep(.form-input) { width: 100%; padding: 10px 14px; border: 1.5px solid var(--no-border); border-radius: 8px; font-size: 16px; }
.contact-page :deep(.form-input:focus) { outline: none; border-color: var(--no-blue); box-shadow: 0 0 0 3px rgba(29,78,216,0.15); }
.form-textarea { width: 100%; padding: 10px 14px; border: 1.5px solid var(--no-border); border-radius: 8px; font-size: 16px; line-height: 1.6; resize: vertical; font-family: inherit; }
.form-textarea:focus { outline: none; border-color: var(--no-blue); box-shadow: 0 0 0 3px rgba(29,78,216,0.15); }
.contact-page :deep(.btn-submit) { align-self: flex-start; background: var(--no-blue); color: var(--no-white); padding: 12px 24px; font-weight: 600; border-radius: 8px; }
.contact-page :deep(.btn-submit:hover:not(:disabled)) { background: var(--no-blue-h); }
.contact-page :deep(footer) { background: #060d1a; padding: 40px 0; border-top: 1px solid rgba(255,255,255,0.06); }
.contact-page :deep(.footer-inner) { display: flex; align-items: center; justify-content: space-between; gap: 24px; flex-wrap: wrap; }
.contact-page :deep(.footer-logo) { font-size: 18px; font-weight: 800; color: var(--no-white); text-decoration: none; }
.contact-page :deep(.footer-logo span) { color: var(--no-blue); }
.contact-page :deep(.footer-copy) { font-size: 13px; color: rgba(255,255,255,0.3); }
</style>
<style>
.contact-page { --no-navy: #0f172a; --no-blue: #1d4ed8; --no-blue-h: #1741b6; --no-blue-l: #dbeafe; --no-slate: #334155; --no-gray: #64748b; --no-gray-l: #f8fafc; --no-border: #e2e8f0; --no-white: #ffffff; }
</style>
