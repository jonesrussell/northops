<script setup lang="ts">
import { ref } from 'vue';
import { Head, Link } from '@inertiajs/vue3';
import { dashboard, home, login, register } from '@/routes';

withDefaults(
    defineProps<{
        canRegister: boolean;
    }>(),
    {
        canRegister: true,
    },
);

const avatarLoaded = ref(true);
</script>

<template>
    <Head>
        <title>NorthOps — Senior Engineering, When You Need It</title>
        <meta
            name="description"
            content="Fractional senior engineering for agencies and startups. Pipelines, Laravel, WordPress, and full-stack PHP builds. Based in Sudbury, ON."
        />
    </Head>
    <div class="northops-page">
        <!-- Nav -->
        <nav>
            <div class="container nav-inner">
                <Link :href="home()" class="logo">North<span>Ops</span></Link>
                <ul class="nav-links">
                    <li><a href="#audiences">Who we serve</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#pricing">Pricing</a></li>
                    <li><a href="#about">About</a></li>
                    <li><Link href="/contact" class="nav-auth">Contact</Link></li>
                    <li v-if="$page.props.auth?.user">
                        <Link :href="dashboard()" class="nav-auth">Dashboard</Link>
                    </li>
                    <template v-else>
                        <li>
                            <Link :href="login()" class="nav-auth">Log in</Link>
                        </li>
                        <li v-if="canRegister">
                            <Link :href="register()" class="btn btn-primary">Register</Link>
                        </li>
                    </template>
                </ul>
                <a href="#cta" class="btn btn-primary">Book a call</a>
            </div>
        </nav>

        <!-- Hero -->
        <section id="hero">
            <div class="container">
                <div class="hero-content">
                    <div class="hero-tag">📍 Sudbury, Ontario &nbsp;·&nbsp; Available now</div>
                    <h1>Senior engineering,<br /><span>when you need it.</span></h1>
                    <p class="hero-sub">
                        Fractional senior developer for agencies and startups. Pipelines, automation, Laravel,
                        WordPress, and full-stack PHP — project-scoped or retainer. No headcount, no long-term
                        commitment.
                    </p>
                    <div class="hero-ctas">
                        <a href="#cta" class="btn btn-primary btn-lg">Book a free call</a>
                        <a href="#services" class="btn btn-outline btn-lg">See what we build</a>
                    </div>
                </div>

                <div class="hero-note">
                    <div class="hero-stat">
                        <strong>$10K+</strong>
                        <span>Typical project value</span>
                    </div>
                    <div class="hero-stat">
                        <strong>Go · PHP · Vue</strong>
                        <span>Full-stack coverage</span>
                    </div>
                    <div class="hero-stat">
                        <strong>Days</strong>
                        <span>Time to first contribution</span>
                    </div>
                    <div class="hero-stat">
                        <strong>Clean handoffs</strong>
                        <span>Documented, always</span>
                    </div>
                </div>
            </div>
        </section>

        <!-- Who we serve -->
        <section id="audiences" class="section">
            <div class="container">
                <div class="section-header">
                    <div class="tag">Who we serve</div>
                    <h2>Built for two kinds of clients</h2>
                    <p>
                        Whether you're an agency filling a gap or a startup that needs a senior engineer without the
                        hire, NorthOps fits.
                    </p>
                </div>

                <div class="audience-grid">
                    <div class="audience-card featured">
                        <div class="audience-icon blue">🏢</div>
                        <h3>Agencies &amp; Dev Shops</h3>
                        <p>
                            You won a project that needs a pipeline, a Laravel build, or a WordPress platform and you
                            don't have the right person on your team. We embed for the project, deliver like a senior
                            IC, and hand off clean when we're done.
                        </p>
                        <ul class="check-list">
                            <li>White-label ready — NorthOps stays invisible if needed</li>
                            <li>No onboarding overhead — senior from day one</li>
                            <li>Project-scoped with clear deliverables</li>
                            <li>Works in your tools, attends your standups</li>
                        </ul>
                    </div>

                    <div class="audience-card">
                        <div class="audience-icon navy">🚀</div>
                        <h3>SMBs &amp; Startups</h3>
                        <p>
                            You need senior engineering judgment to build or scale a product, pipeline, or platform but
                            you can't justify a $130K+ full-time hire. We give you that capability on a contract basis
                            that ends when the work is done.
                        </p>
                        <ul class="check-list">
                            <li>Senior-level delivery, not junior execution</li>
                            <li>Architecture decisions you'll stand behind long-term</li>
                            <li>Content pipelines, automation, and backend systems</li>
                            <li>Milestones and documentation included</li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <!-- Services -->
        <section id="services" class="section">
            <div class="container">
                <div class="section-header">
                    <div class="tag">Services</div>
                    <h2>What NorthOps builds</h2>
                    <p>Focused on the work we do exceptionally well. Not a generalist shop.</p>
                </div>

                <div class="services-grid">
                    <div class="service-card">
                        <span class="service-icon">⚙️</span>
                        <h3>Fractional Engineering</h3>
                        <p>
                            Embed with your team for a project. Own a technical workstream end-to-end with senior-level
                            judgment and accountability.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">Staff aug</span>
                            <span class="service-tag">White-label</span>
                            <span class="service-tag">2 wks – 3 mo</span>
                        </div>
                    </div>

                    <div class="service-card">
                        <span class="service-icon">🔀</span>
                        <h3>Content Pipelines &amp; Automation</h3>
                        <p>
                            Crawl, classify, route, and publish content at scale. Built on production-proven
                            infrastructure, delivered as a working system.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">Go</span>
                            <span class="service-tag">Redis</span>
                            <span class="service-tag">PostgreSQL</span>
                            <span class="service-tag">PipelineX</span>
                        </div>
                    </div>

                    <div class="service-card">
                        <span class="service-icon">🐘</span>
                        <h3>PHP / CMS Development</h3>
                        <p>
                            New builds, migrations, or feature work on Laravel, WordPress, and Drupal platforms — with
                            Vue 3 frontends where needed.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">Laravel</span>
                            <span class="service-tag">WordPress</span>
                            <span class="service-tag">Drupal</span>
                            <span class="service-tag">Vue 3</span>
                        </div>
                    </div>

                    <div class="service-card">
                        <span class="service-icon">🗺️</span>
                        <h3>Architecture Consulting</h3>
                        <p>
                            Audit, design, or validate your technical architecture. Written recommendations and
                            implementation roadmaps you'll actually use.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">System design</span>
                            <span class="service-tag">Stack selection</span>
                            <span class="service-tag">Build vs buy</span>
                        </div>
                    </div>

                    <div class="service-card">
                        <span class="service-icon">📋</span>
                        <h3>Technical Project Management</h3>
                        <p>
                            Own the technical coordination end-to-end: scope, milestones, vendor management, QA, and
                            delivery when you have devs but need someone running the show.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">Scope &amp; milestones</span>
                            <span class="service-tag">QA</span>
                            <span class="service-tag">Delivery</span>
                        </div>
                    </div>

                    <div class="service-card">
                        <span class="service-icon">🌐</span>
                        <h3>PipelineX Deployments</h3>
                        <p>
                            Managed or self-hosted deployments of PipelineX — a production-grade content intelligence
                            platform for crawling, classifying, and publishing at scale.
                        </p>
                        <div class="service-tags">
                            <span class="service-tag">Managed</span>
                            <span class="service-tag">Self-hosted</span>
                            <span class="service-tag">Custom config</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Why NorthOps -->
        <section id="why" class="section">
            <div class="container">
                <div class="section-header">
                    <div class="tag why-tag">Why NorthOps</div>
                    <h2>What makes this different</h2>
                    <p>Not a generalist freelancer. Not a dev agency with juniors. Something more specific.</p>
                </div>

                <div class="diff-grid">
                    <div class="diff-item">
                        <div class="diff-label">Depth</div>
                        <h3>Built production pipelines, not just tutorials</h3>
                        <p>
                            North Cloud and PipelineX are real systems handling real traffic. That experience comes
                            with every engagement — not just theoretical knowledge of how pipelines should work.
                        </p>
                    </div>
                    <div class="diff-item">
                        <div class="diff-label">Breadth</div>
                        <h3>Go, PHP, and Vue at senior level</h3>
                        <p>
                            Rare to find all three at this depth in one person. Agencies don't have to stitch together
                            multiple contractors or manage the coordination between them.
                        </p>
                    </div>
                    <div class="diff-item">
                        <div class="diff-label">Ownership</div>
                        <h3>Clean handoffs, every time</h3>
                        <p>
                            Engagements end with documented code, a working system, and a handoff you can actually build
                            on. No black-box deliverables, no knowledge trapped in one person's head.
                        </p>
                    </div>
                    <div class="diff-item">
                        <div class="diff-label">Speed</div>
                        <h3>Contributing in days, not months</h3>
                        <p>
                            No ramp-up weeks. No waiting for someone to learn the domain. Senior-level contribution
                            starts almost immediately — critical when you just won a project and need to move.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Pricing -->
        <section id="pricing" class="section">
            <div class="container">
                <div class="section-header">
                    <div class="tag">Pricing</div>
                    <h2>Transparent, project-scoped</h2>
                    <p>No hourly billing. Fixed fees and retainers only — so you know what you're getting before we start.</p>
                </div>

                <div class="pricing-grid">
                    <div class="pricing-card">
                        <div class="pricing-name">Architecture Review</div>
                        <div class="pricing-price">$2,500<span> fixed</span></div>
                        <div class="pricing-desc">
                            A written technical assessment of your current or planned architecture, with actionable
                            recommendations. Delivered in 5–7 business days.
                        </div>
                        <ul class="pricing-features">
                            <li>System design review</li>
                            <li>Written recommendations report</li>
                            <li>1-hour debrief call</li>
                            <li>Implementation roadmap included</li>
                        </ul>
                        <a href="#cta" class="btn btn-dark pricing-btn">Book a review</a>
                    </div>

                    <div class="pricing-card featured">
                        <div class="featured-badge">Most popular</div>
                        <div class="pricing-name">Project Engagement</div>
                        <div class="pricing-price">$10,000<span> starting</span></div>
                        <div class="pricing-desc">
                            Scoped project delivery with clear milestones, documentation, and a clean handoff. Typical
                            duration 4–8 weeks.
                        </div>
                        <ul class="pricing-features">
                            <li>Defined scope &amp; deliverables</li>
                            <li>Weekly progress updates</li>
                            <li>50% upfront, 50% on delivery</li>
                            <li>Documented handoff included</li>
                            <li>Post-delivery support (2 weeks)</li>
                        </ul>
                        <a href="#cta" class="btn btn-primary pricing-btn">Start a project</a>
                    </div>

                    <div class="pricing-card">
                        <div class="pricing-name">Monthly Retainer</div>
                        <div class="pricing-price">$5,000<span>/mo</span></div>
                        <div class="pricing-desc">
                            Ongoing engineering capacity for product sprints, pipeline operations, or embedded team
                            support. 3-month minimum.
                        </div>
                        <ul class="pricing-features">
                            <li>Dedicated monthly capacity</li>
                            <li>Sprint-based delivery</li>
                            <li>Weekly standups &amp; reviews</li>
                            <li>Priority availability</li>
                            <li>3-month minimum engagement</li>
                        </ul>
                        <a href="#cta" class="btn btn-dark pricing-btn">Discuss a retainer</a>
                    </div>
                </div>

                <div class="pricing-note">
                    <strong>💡 Start with an architecture review.</strong> At $2,500 it's low-risk for you and
                    high-signal for both of us. Most architecture reviews lead naturally into a project engagement —
                    but there's no obligation.
                </div>
            </div>
        </section>

        <!-- About -->
        <section id="about" class="section">
            <div class="container">
                <div class="about-inner">
                    <div>
                        <div class="about-avatar">
                            <img
                                v-show="avatarLoaded"
                                src="https://avatars.githubusercontent.com/u/499552?v=4"
                                alt="Russell Jones"
                                @error="avatarLoaded = false"
                                @load="avatarLoaded = true"
                            />
                            <span v-show="!avatarLoaded" class="about-avatar-fallback">👤</span>
                        </div>
                    </div>
                    <div class="about-content">
                        <div class="tag">About</div>
                        <h2>Russell Jones<br />Sudbury, ON</h2>
                        <p>
                            I'm a senior full-stack developer with deep experience in content pipelines, automation
                            systems, and PHP/Laravel ecosystems. I built North Cloud — a production content
                            intelligence platform that crawls, classifies, and routes news articles in real time — and I
                            operate it daily.
                        </p>
                        <p>
                            NorthOps is how I work with clients: project-scoped, senior-level, and focused on delivery. I
                            work with agencies that need a specialist for a project and startups that need senior
                            engineering without the overhead of a full-time hire.
                        </p>
                        <p>
                            I've been building on the web since before frameworks were a thing. These days my stack is
                            Go, PHP (Laravel, WordPress, Drupal), and Vue 3 — and I care deeply about code that's clean
                            enough for the next person to understand.
                        </p>
                        <div class="about-stack">
                            <span class="stack-tag">Go</span>
                            <span class="stack-tag">Laravel</span>
                            <span class="stack-tag">WordPress</span>
                            <span class="stack-tag">Drupal</span>
                            <span class="stack-tag">Vue 3</span>
                            <span class="stack-tag">TypeScript</span>
                            <span class="stack-tag">PostgreSQL</span>
                            <span class="stack-tag">Redis</span>
                            <span class="stack-tag">Docker</span>
                            <span class="stack-tag">Linux</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- CTA -->
        <section id="cta">
            <div class="container">
                <h2>Ready to talk about your project?</h2>
                <p>
                    Book a free 30-minute call. No sales pitch — just a straight conversation about what you're
                    building and whether NorthOps is the right fit.
                </p>
                <div class="cta-actions">
                    <a
                        href="https://calendly.com/northops"
                        target="_blank"
                        rel="noopener noreferrer"
                        class="btn btn-white btn-lg"
                    >
                        📅 Book a free call
                    </a>
                    <Link href="/contact" class="btn btn-outline btn-lg">✉️ Send an email</Link>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container footer-inner">
                <Link :href="home()" class="footer-logo">North<span>Ops</span></Link>
                <ul class="footer-links">
                    <li><a href="#services">Services</a></li>
                    <li><a href="#pricing">Pricing</a></li>
                    <li><a href="#about">About</a></li>
                    <li><Link href="/contact">hello@northops.ca</Link></li>
                </ul>
                <div class="footer-copy">© 2026 NorthOps · northops.ca</div>
            </div>
        </footer>
    </div>
</template>

<style scoped>
.northops-page { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', system-ui, sans-serif; font-size: 16px; line-height: 1.6; color: var(--no-slate); background: var(--no-white); }
.northops-page :deep(*), .northops-page :deep(*::before), .northops-page :deep(*::after) { box-sizing: border-box; margin: 0; padding: 0; }
.northops-page :deep(.container) { max-width: 1100px; margin: 0 auto; padding: 0 24px; }
.northops-page :deep(.section) { padding: 96px 0; }
.northops-page :deep(.tag) { display: inline-block; font-size: 12px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; color: var(--no-blue); background: var(--no-blue-l); padding: 4px 12px; border-radius: 100px; margin-bottom: 16px; }
.northops-page :deep(.tag.why-tag) { color: #93c5fd; background: rgba(29,78,216,0.2); border: 1px solid rgba(29,78,216,0.3); }
.northops-page :deep(nav) { position: sticky; top: 0; z-index: 100; background: rgba(15,23,42,0.96); backdrop-filter: blur(8px); border-bottom: 1px solid rgba(255,255,255,0.08); }
.northops-page :deep(.nav-inner) { display: flex; align-items: center; justify-content: space-between; height: 64px; }
.northops-page :deep(.logo) { font-size: 20px; font-weight: 800; color: var(--no-white); text-decoration: none; letter-spacing: -0.02em; }
.northops-page :deep(.logo span) { color: var(--no-blue); }
.northops-page :deep(.nav-links) { display: flex; align-items: center; gap: 32px; list-style: none; }
.northops-page :deep(.nav-links a) { color: rgba(255,255,255,0.7); text-decoration: none; font-size: 14px; font-weight: 500; transition: color 0.15s; }
.northops-page :deep(.nav-links a:hover) { color: var(--no-white); }
.northops-page :deep(.nav-auth) { color: rgba(255,255,255,0.7) !important; text-decoration: none; font-size: 14px; font-weight: 500; }
.northops-page :deep(.nav-auth:hover) { color: var(--no-white) !important; }
.northops-page :deep(.btn) { display: inline-flex; align-items: center; gap: 8px; padding: 10px 22px; border-radius: 8px; font-size: 14px; font-weight: 600; text-decoration: none; transition: all 0.15s; cursor: pointer; border: none; }
.northops-page :deep(.btn-primary) { background: var(--no-blue); color: var(--no-white); }
.northops-page :deep(.btn-primary:hover) { background: var(--no-blue-h); transform: translateY(-1px); }
.northops-page :deep(.btn-outline) { background: transparent; color: var(--no-white); border: 1.5px solid rgba(255,255,255,0.3); }
.northops-page :deep(.btn-outline:hover) { border-color: rgba(255,255,255,0.7); }
.northops-page :deep(.btn-lg) { padding: 14px 28px; font-size: 16px; border-radius: 10px; }
.northops-page :deep(.btn-dark) { background: var(--no-navy); color: var(--no-white); }
.northops-page :deep(.btn-dark:hover) { background: #1e2d4a; transform: translateY(-1px); }
.northops-page :deep(#hero) { background: var(--no-navy); padding: 112px 0 96px; position: relative; overflow: hidden; }
.northops-page :deep(#hero::before) { content: ''; position: absolute; top: -200px; right: -200px; width: 600px; height: 600px; background: radial-gradient(circle, rgba(29,78,216,0.25) 0%, transparent 70%); pointer-events: none; }
.northops-page :deep(#hero::after) { content: ''; position: absolute; bottom: -100px; left: -100px; width: 400px; height: 400px; background: radial-gradient(circle, rgba(29,78,216,0.12) 0%, transparent 70%); pointer-events: none; }
.northops-page :deep(.hero-content) { position: relative; z-index: 1; max-width: 760px; }
.northops-page :deep(.hero-tag) { display: inline-block; font-size: 12px; font-weight: 700; letter-spacing: 0.1em; text-transform: uppercase; color: #93c5fd; background: rgba(29,78,216,0.2); padding: 5px 14px; border-radius: 100px; border: 1px solid rgba(29,78,216,0.4); margin-bottom: 28px; }
.northops-page :deep(#hero h1) { font-size: clamp(36px,5vw,60px); font-weight: 800; line-height: 1.1; letter-spacing: -0.03em; color: var(--no-white); margin-bottom: 24px; }
.northops-page :deep(#hero h1 span) { color: #60a5fa; }
.northops-page :deep(.hero-sub) { font-size: 18px; line-height: 1.7; color: rgba(255,255,255,0.65); max-width: 580px; margin-bottom: 40px; }
.northops-page :deep(.hero-ctas) { display: flex; gap: 12px; flex-wrap: wrap; align-items: center; }
.northops-page :deep(.hero-note) { margin-top: 64px; padding-top: 40px; border-top: 1px solid rgba(255,255,255,0.08); display: flex; gap: 48px; flex-wrap: wrap; }
.northops-page :deep(.hero-stat strong) { display: block; font-size: 28px; font-weight: 800; color: var(--no-white); letter-spacing: -0.02em; }
.northops-page :deep(.hero-stat span) { font-size: 13px; color: rgba(255,255,255,0.5); }
.northops-page :deep(#audiences) { background: var(--no-gray-l); }
.northops-page :deep(.audience-grid) { display: grid; grid-template-columns: 1fr 1fr; gap: 24px; }
@media (max-width: 700px) { .northops-page :deep(.audience-grid) { grid-template-columns: 1fr; } }
.northops-page :deep(.audience-card) { background: var(--no-white); border: 1.5px solid var(--no-border); border-radius: 16px; padding: 36px; }
.northops-page :deep(.audience-card.featured) { border-color: var(--no-blue); box-shadow: 0 0 0 4px rgba(29,78,216,0.08); }
.northops-page :deep(.audience-icon) { width: 44px; height: 44px; border-radius: 10px; display: flex; align-items: center; justify-content: center; font-size: 20px; margin-bottom: 20px; }
.northops-page :deep(.audience-icon.blue) { background: var(--no-blue-l); }
.northops-page :deep(.audience-icon.navy) { background: #e0e7ff; }
.northops-page :deep(.audience-card h3) { font-size: 20px; font-weight: 700; color: var(--no-navy); margin-bottom: 10px; }
.northops-page :deep(.audience-card p) { font-size: 15px; color: var(--no-gray); line-height: 1.65; margin-bottom: 24px; }
.northops-page :deep(.check-list) { list-style: none; display: flex; flex-direction: column; gap: 10px; }
.northops-page :deep(.check-list li) { display: flex; align-items: flex-start; gap: 10px; font-size: 14px; color: var(--no-slate); }
.northops-page :deep(.check-list li::before) { content: '✓'; flex-shrink: 0; width: 20px; height: 20px; background: var(--no-blue-l); color: var(--no-blue); border-radius: 50%; font-size: 11px; font-weight: 700; display: flex; align-items: center; justify-content: center; }
.northops-page :deep(#services) { background: var(--no-white); }
.northops-page :deep(.section-header) { margin-bottom: 56px; }
.northops-page :deep(.section-header h2) { font-size: clamp(28px,4vw,42px); font-weight: 800; color: var(--no-navy); letter-spacing: -0.025em; margin-bottom: 12px; line-height: 1.15; }
.northops-page :deep(.section-header p) { font-size: 17px; color: var(--no-gray); max-width: 520px; }
.northops-page :deep(.services-grid) { display: grid; grid-template-columns: repeat(3,1fr); gap: 20px; }
@media (max-width: 900px) { .northops-page :deep(.services-grid) { grid-template-columns: 1fr 1fr; } }
@media (max-width: 600px) { .northops-page :deep(.services-grid) { grid-template-columns: 1fr; } }
.northops-page :deep(.service-card) { border: 1.5px solid var(--no-border); border-radius: 14px; padding: 28px; transition: border-color 0.2s, box-shadow 0.2s; }
.northops-page :deep(.service-card:hover) { border-color: var(--no-blue); box-shadow: 0 4px 24px rgba(29,78,216,0.1); }
.northops-page :deep(.service-icon) { font-size: 26px; margin-bottom: 16px; display: block; }
.northops-page :deep(.service-card h3) { font-size: 16px; font-weight: 700; color: var(--no-navy); margin-bottom: 8px; }
.northops-page :deep(.service-card p) { font-size: 14px; color: var(--no-gray); line-height: 1.6; margin-bottom: 16px; }
.northops-page :deep(.service-tags) { display: flex; flex-wrap: wrap; gap: 6px; }
.northops-page :deep(.service-tag) { font-size: 11px; font-weight: 600; color: var(--no-blue); background: var(--no-blue-l); padding: 3px 9px; border-radius: 100px; }
.northops-page :deep(#why) { background: var(--no-navy); }
.northops-page :deep(#why .section-header h2) { color: var(--no-white); }
.northops-page :deep(#why .section-header p) { color: rgba(255,255,255,0.55); }
.northops-page :deep(.diff-grid) { display: grid; grid-template-columns: 1fr 1fr; gap: 2px; background: rgba(255,255,255,0.06); border-radius: 16px; overflow: hidden; }
@media (max-width: 700px) { .northops-page :deep(.diff-grid) { grid-template-columns: 1fr; } }
.northops-page :deep(.diff-item) { background: var(--no-navy); padding: 36px; position: relative; }
.northops-page :deep(.diff-item::before) { content: ''; position: absolute; top: 0; left: 0; right: 0; height: 2px; background: var(--no-blue); opacity: 0; transition: opacity 0.2s; }
.northops-page :deep(.diff-item:hover::before) { opacity: 1; }
.northops-page :deep(.diff-label) { font-size: 11px; font-weight: 800; letter-spacing: 0.12em; text-transform: uppercase; color: #60a5fa; margin-bottom: 12px; }
.northops-page :deep(.diff-item h3) { font-size: 19px; font-weight: 700; color: var(--no-white); margin-bottom: 10px; line-height: 1.3; }
.northops-page :deep(.diff-item p) { font-size: 14px; color: rgba(255,255,255,0.55); line-height: 1.65; }
.northops-page :deep(#pricing) { background: var(--no-gray-l); }
.northops-page :deep(.pricing-grid) { display: grid; grid-template-columns: repeat(3,1fr); gap: 20px; align-items: start; }
@media (max-width: 900px) { .northops-page :deep(.pricing-grid) { grid-template-columns: 1fr; max-width: 420px; margin: 0 auto; } }
.northops-page :deep(.pricing-card) { background: var(--no-white); border: 1.5px solid var(--no-border); border-radius: 16px; padding: 32px; }
.northops-page :deep(.pricing-card.featured) { border-color: var(--no-blue); box-shadow: 0 8px 40px rgba(29,78,216,0.15); position: relative; }
.northops-page :deep(.featured-badge) { position: absolute; top: -13px; left: 50%; transform: translateX(-50%); background: var(--no-blue); color: var(--no-white); font-size: 11px; font-weight: 700; letter-spacing: 0.06em; text-transform: uppercase; padding: 4px 14px; border-radius: 100px; white-space: nowrap; }
.northops-page :deep(.pricing-name) { font-size: 13px; font-weight: 700; letter-spacing: 0.08em; text-transform: uppercase; color: var(--no-gray); margin-bottom: 12px; }
.northops-page :deep(.pricing-price) { font-size: 36px; font-weight: 800; color: var(--no-navy); letter-spacing: -0.03em; line-height: 1; margin-bottom: 4px; }
.northops-page :deep(.pricing-price span) { font-size: 16px; font-weight: 500; color: var(--no-gray); }
.northops-page :deep(.pricing-desc) { font-size: 14px; color: var(--no-gray); margin-bottom: 24px; padding-bottom: 24px; border-bottom: 1px solid var(--no-border); line-height: 1.55; }
.northops-page :deep(.pricing-features) { list-style: none; display: flex; flex-direction: column; gap: 10px; margin-bottom: 28px; }
.northops-page :deep(.pricing-features li) { display: flex; align-items: flex-start; gap: 10px; font-size: 14px; color: var(--no-slate); }
.northops-page :deep(.pricing-features li::before) { content: '✓'; flex-shrink: 0; width: 18px; height: 18px; background: #dcfce7; color: #16a34a; border-radius: 50%; font-size: 10px; font-weight: 700; display: flex; align-items: center; justify-content: center; margin-top: 2px; }
.northops-page :deep(.pricing-btn) { width: 100%; justify-content: center; }
.northops-page :deep(.pricing-note) { margin-top: 32px; background: var(--no-gold-l); border: 1px solid #fde68a; border-radius: 10px; padding: 16px 20px; font-size: 14px; color: #92400e; line-height: 1.55; max-width: 640px; }
.northops-page :deep(.pricing-note strong) { color: #78350f; }
.northops-page :deep(#about) { background: var(--no-white); }
.northops-page :deep(.about-inner) { display: grid; grid-template-columns: 1fr 2fr; gap: 64px; align-items: center; }
@media (max-width: 800px) { .northops-page :deep(.about-inner) { grid-template-columns: 1fr; gap: 32px; } }
.northops-page :deep(.about-avatar) { width: 100%; aspect-ratio: 1; max-width: 280px; border-radius: 20px; background: linear-gradient(135deg, var(--no-navy), var(--no-blue)); display: flex; align-items: center; justify-content: center; font-size: 80px; overflow: hidden; }
.northops-page :deep(.about-avatar img) { width: 100%; height: 100%; object-fit: cover; border-radius: 20px; }
.northops-page :deep(.about-avatar-fallback) { font-size: 80px; line-height: 1; }
.northops-page :deep(.about-content h2) { font-size: clamp(26px,3.5vw,38px); font-weight: 800; color: var(--no-navy); letter-spacing: -0.025em; margin-bottom: 16px; line-height: 1.2; }
.northops-page :deep(.about-content p) { font-size: 16px; color: var(--no-gray); line-height: 1.75; margin-bottom: 16px; }
.northops-page :deep(.about-stack) { display: flex; flex-wrap: wrap; gap: 8px; margin-top: 24px; }
.northops-page :deep(.stack-tag) { font-size: 12px; font-weight: 600; color: var(--no-slate); background: var(--no-gray-l); border: 1px solid var(--no-border); padding: 5px 12px; border-radius: 100px; }
.northops-page :deep(#cta) { background: linear-gradient(135deg, var(--no-navy) 0%, #1e3a8a 100%); padding: 96px 0; text-align: center; position: relative; overflow: hidden; }
.northops-page :deep(#cta::before) { content: ''; position: absolute; top: -150px; left: 50%; transform: translateX(-50%); width: 600px; height: 600px; background: radial-gradient(circle, rgba(29,78,216,0.3) 0%, transparent 70%); pointer-events: none; }
.northops-page :deep(#cta .container) { position: relative; z-index: 1; }
.northops-page :deep(#cta h2) { font-size: clamp(28px,4vw,48px); font-weight: 800; color: var(--no-white); letter-spacing: -0.025em; margin-bottom: 16px; }
.northops-page :deep(#cta p) { font-size: 18px; color: rgba(255,255,255,0.65); margin-bottom: 40px; max-width: 480px; margin-left: auto; margin-right: auto; }
.northops-page :deep(.cta-actions) { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }
.northops-page :deep(.btn-white) { background: var(--no-white); color: var(--no-navy); }
.northops-page :deep(.btn-white:hover) { background: #f1f5f9; transform: translateY(-1px); }
.northops-page :deep(footer) { background: #060d1a; padding: 40px 0; border-top: 1px solid rgba(255,255,255,0.06); }
.northops-page :deep(.footer-inner) { display: flex; align-items: center; justify-content: space-between; gap: 24px; flex-wrap: wrap; }
.northops-page :deep(.footer-logo) { font-size: 18px; font-weight: 800; color: var(--no-white); text-decoration: none; }
.northops-page :deep(.footer-logo span) { color: var(--no-blue); }
.northops-page :deep(.footer-links) { display: flex; gap: 24px; list-style: none; }
.northops-page :deep(.footer-links a) { font-size: 13px; color: rgba(255,255,255,0.4); text-decoration: none; transition: color 0.15s; }
.northops-page :deep(.footer-links a:hover) { color: rgba(255,255,255,0.8); }
.northops-page :deep(.footer-copy) { font-size: 13px; color: rgba(255,255,255,0.3); }
@media (max-width: 680px) { .northops-page :deep(.nav-links) { display: none; } }
</style>
<style>
html { scroll-behavior: smooth; }
.northops-page { --no-navy: #0f172a; --no-blue: #1d4ed8; --no-blue-h: #1741b6; --no-blue-l: #dbeafe; --no-slate: #334155; --no-gray: #64748b; --no-gray-l: #f8fafc; --no-border: #e2e8f0; --no-white: #ffffff; --no-gold: #d97706; --no-gold-l: #fef3c7; }
</style>
