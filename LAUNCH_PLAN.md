# NorthOps Launch Plan

> Complete GitHub scaffolding: milestones, issues, project board, repo structure, READMEs, brand narrative, and founder bios.
>
> **Repo:** `jonesrussell/northops`
> **Owner type:** User (not org — use `--owner jonesrussell` for projects)

---

## 0. Prerequisites: Labels

Create the labels used across all issues before running anything else.

```bash
gh label create "strategy"   --color "0E8A16" --description "Company positioning, market, pricing" --repo jonesrussell/northops
gh label create "content"    --color "1D76DB" --description "Copy, narrative, bios, case studies"  --repo jonesrussell/northops
gh label create "engineering" --color "D93F0B" --description "Code, infrastructure, CI/CD"         --repo jonesrussell/northops
gh label create "branding"   --color "BFD4F2" --description "Logo, typography, visual identity"    --repo jonesrussell/northops
gh label create "ops"        --color "FEF2C0" --description "SOPs, legal, finance, tools"          --repo jonesrussell/northops
gh label create "marketing"  --color "C2E0C6" --description "Launch, outreach, positioning"        --repo jonesrussell/northops
gh label create "design"     --color "D4C5F9" --description "UI/UX, layout, responsive"           --repo jonesrussell/northops
```

---

## 1. GitHub Milestones

### Milestone 1: Company Definition & Positioning

**Description:** Define what NorthOps is, who it serves, what it offers, and how it's positioned in the market. No code — just decisions.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M1: Company Definition & Positioning" \
  -f description="Define what NorthOps is, who it serves, what it offers, and how it is positioned. No code — just decisions." \
  -f state="open" \
  -f due_on="2026-03-25T00:00:00Z"
```

### Milestone 2: Brand Identity & Narrative

**Description:** Establish visual identity, tone, and brand narrative. Logo, typography, colour palette, voice guidelines.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M2: Brand Identity & Narrative" \
  -f description="Establish visual identity, tone, and brand narrative. Logo, typography, colour palette, voice guidelines." \
  -f state="open" \
  -f due_on="2026-04-08T00:00:00Z"
```

### Milestone 3: Website Rewrite (Real Version)

**Description:** Rebuild the website with real content, real structure, and real pages. Laravel 12 + Vue 3 + Inertia + Tailwind.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M3: Website Rewrite" \
  -f description="Rebuild the website with real content, real structure, and real pages. Laravel 12 + Vue 3 + Inertia + Tailwind." \
  -f state="open" \
  -f due_on="2026-05-06T00:00:00Z"
```

### Milestone 4: Operational Infrastructure

**Description:** Set up the operational backbone: contracts, invoicing, SOPs, project templates, CI/CD pipelines, and client onboarding.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M4: Operational Infrastructure" \
  -f description="Set up the operational backbone: contracts, invoicing, SOPs, project templates, CI/CD pipelines, and client onboarding." \
  -f state="open" \
  -f due_on="2026-05-20T00:00:00Z"
```

### Milestone 5: Marketing & Launch Prep

**Description:** Prepare launch materials, outreach strategy, initial content, social presence, and soft launch plan.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M5: Marketing & Launch Prep" \
  -f description="Prepare launch materials, outreach strategy, initial content, social presence, and soft launch plan." \
  -f state="open" \
  -f due_on="2026-06-03T00:00:00Z"
```

### Milestone 6: Public Launch

**Description:** Go live. Website published, socials active, first outreach sent, open for business.

```bash
gh api repos/jonesrussell/northops/milestones \
  --method POST \
  -f title="M6: Public Launch" \
  -f description="Go live. Website published, socials active, first outreach sent, open for business." \
  -f state="open" \
  -f due_on="2026-06-17T00:00:00Z"
```

---

## 2. GitHub Issues

### Milestone 1: Company Definition & Positioning

#### Issue 1.1: Define Service Offerings

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Define service offerings" \
  --label "strategy" \
  --milestone "M1: Company Definition & Positioning" \
  --body "$(cat <<'EOF'
## Description
Document the exact services NorthOps will offer at launch. Be specific — no vague "consulting" buckets.

## Tasks
- [ ] List each service with a one-paragraph description
- [ ] Define what is included and what is explicitly excluded
- [ ] Map each service to the founder(s) who deliver it
- [ ] Identify which services are fixed-price vs. time-and-materials

## Acceptance Criteria
- A markdown document listing each service with description, scope boundaries, delivery model, and responsible founder
- No overlap or ambiguity between services
EOF
)"
```

#### Issue 1.2: Define Target Client Profiles

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Define target client profiles" \
  --label "strategy" \
  --milestone "M1: Company Definition & Positioning" \
  --body "$(cat <<'EOF'
## Description
Identify the types of clients NorthOps will pursue. Be concrete — describe real company shapes, not personas.

## Tasks
- [ ] Define 3-5 target client profiles (agency, startup, SMB, etc.)
- [ ] For each profile: typical size, tech stack, pain points, budget range
- [ ] Identify which services map to which profiles
- [ ] Note any profiles to explicitly avoid

## Acceptance Criteria
- A document with 3-5 client profiles, each with size/stack/pain/budget/service mapping
- At least one "anti-profile" (who we don't work with and why)
EOF
)"
```

#### Issue 1.3: Define Pricing Model

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Define pricing model" \
  --label "strategy,ops" \
  --milestone "M1: Company Definition & Positioning" \
  --body "$(cat <<'EOF'
## Description
Establish how NorthOps charges for work. Cover rate structure, engagement types, and payment terms.

## Tasks
- [ ] Set hourly/daily rates for each founder
- [ ] Define engagement types: retainer, project, advisory
- [ ] Set payment terms (net-15, net-30, deposit requirements)
- [ ] Draft a rate card (internal, not public)

## Acceptance Criteria
- Internal rate card with rates, engagement types, and payment terms
- Clear distinction between fixed-price and T&M work
EOF
)"
```

#### Issue 1.4: Write Company Positioning Statement

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write company positioning statement" \
  --label "strategy,content" \
  --milestone "M1: Company Definition & Positioning" \
  --body "$(cat <<'EOF'
## Description
Write a short, direct positioning statement that answers: what NorthOps is, who it's for, and why it exists.

## Tasks
- [ ] Draft a 2-3 sentence positioning statement
- [ ] Draft a one-paragraph expanded version
- [ ] Review with both founders for accuracy

## Acceptance Criteria
- A positioning statement that is factually accurate, non-fluffy, and distinguishes NorthOps from generic dev shops
- Both founders sign off
EOF
)"
```

#### Issue 1.5: Define Competitive Differentiation

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Define competitive differentiation" \
  --label "strategy" \
  --milestone "M1: Company Definition & Positioning" \
  --body "$(cat <<'EOF'
## Description
Articulate what makes NorthOps different from other dev shops, agencies, and freelancers. No superlatives — just facts.

## Tasks
- [ ] List 3-5 concrete differentiators
- [ ] For each, explain why it matters to the target client
- [ ] Identify what NorthOps is NOT (anti-positioning)

## Acceptance Criteria
- A list of differentiators with supporting rationale
- At least 2 anti-positioning statements ("we are not X")
EOF
)"
```

### Milestone 2: Brand Identity & Narrative

#### Issue 2.1: Design Logo and Wordmark

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Design logo and wordmark" \
  --label "branding,design" \
  --milestone "M2: Brand Identity & Narrative" \
  --body "$(cat <<'EOF'
## Description
Create a logo and wordmark for NorthOps. Must work at small sizes, in monochrome, and on dark/light backgrounds.

## Tasks
- [ ] Design primary logo (icon + wordmark)
- [ ] Design icon-only variant (for favicons, avatars)
- [ ] Design wordmark-only variant
- [ ] Export in SVG, PNG (multiple sizes), and ICO formats
- [ ] Test on dark and light backgrounds

## Acceptance Criteria
- Logo files in SVG and PNG (16px, 32px, 128px, 512px)
- Favicon ICO file
- All variants readable at 16px
EOF
)"
```

#### Issue 2.2: Define Colour Palette and Typography

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Define colour palette and typography" \
  --label "branding,design" \
  --milestone "M2: Brand Identity & Narrative" \
  --body "$(cat <<'EOF'
## Description
Establish the colour palette and typeface selections for all NorthOps materials (web, print, docs).

## Tasks
- [ ] Select primary, secondary, and accent colours with hex/HSL values
- [ ] Define semantic colour usage (background, text, links, borders, alerts)
- [ ] Select heading and body typefaces (web-safe or self-hosted)
- [ ] Define type scale (sizes, weights, line-heights)
- [ ] Map to Tailwind config values

## Acceptance Criteria
- A colour palette document with hex/HSL values and usage rules
- Typography spec with typefaces, scale, and Tailwind mappings
EOF
)"
```

#### Issue 2.3: Write Brand Voice Guidelines

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write brand voice guidelines" \
  --label "branding,content" \
  --milestone "M2: Brand Identity & Narrative" \
  --body "$(cat <<'EOF'
## Description
Define how NorthOps sounds in writing. This governs website copy, emails, proposals, and social posts.

## Tasks
- [ ] Define voice attributes (e.g., direct, technical, grounded)
- [ ] Provide do/don't examples for each attribute
- [ ] Write 3-5 sample sentences in the NorthOps voice
- [ ] Define words/phrases to avoid

## Acceptance Criteria
- A voice guide with attributes, examples, and a banned-words list
- Reviewed by both founders
EOF
)"
```

#### Issue 2.4: Write Brand Narrative

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write brand narrative" \
  --label "branding,content" \
  --milestone "M2: Brand Identity & Narrative" \
  --body "$(cat <<'EOF'
## Description
Write the core brand narrative for NorthOps. This is the foundation for the About page and all outward-facing copy.

## Tasks
- [ ] Write a 300-500 word narrative covering: what NorthOps is, the problem it solves, how the founders complement each other, and why senior-only matters
- [ ] Review for accuracy and tone (no fluff, no saviour narrative)
- [ ] Get sign-off from both founders

## Acceptance Criteria
- A brand narrative document, 300-500 words
- Factually accurate, technically grounded, no marketing fluff
EOF
)"
```

#### Issue 2.5: Write Founder Bios

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write founder bios" \
  --label "content" \
  --milestone "M2: Brand Identity & Narrative" \
  --body "$(cat <<'EOF'
## Description
Write accurate, grounded bios for Russell and Luc. These will appear on the website and in proposals.

## Tasks
- [ ] Write Russell's bio (PHP/Laravel, CMS, pipelines, architecture, DevOps)
- [ ] Write Luc's bio (TypeScript/React, Rails, Python, DevOps)
- [ ] Ensure each bio covers: technical focus, experience areas, and what they bring to client work
- [ ] No exaggeration, no superlatives

## Acceptance Criteria
- Two bios, 100-200 words each
- Technically accurate, grounded in real skills
EOF
)"
```

### Milestone 3: Website Rewrite

#### Issue 3.1: Design Site Layout and Information Architecture

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Design site layout and information architecture" \
  --label "design,engineering" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Define the page structure, navigation, and content hierarchy for the NorthOps website.

## Tasks
- [ ] Define the page list (Home, Services, About, Contact — minimum)
- [ ] Define navigation structure (header, footer, mobile)
- [ ] Define content blocks for each page
- [ ] Wireframe key pages (low-fidelity is fine)

## Acceptance Criteria
- A sitemap with all pages and their content blocks
- Navigation spec (header links, footer links, mobile menu)
- Low-fidelity wireframes for Home, Services, About
EOF
)"
```

#### Issue 3.2: Build Home Page

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Build home page" \
  --label "engineering,design" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Implement the home page with real content. Hero section, services overview, team intro, and CTA.

## Tasks
- [ ] Hero section with positioning statement and primary CTA
- [ ] Services overview (3-4 cards linking to Services page)
- [ ] Team section (founders with photos and short bios)
- [ ] Footer with contact info and links
- [ ] Responsive across mobile, tablet, desktop

## Acceptance Criteria
- Home page renders with real content (no lorem ipsum)
- All sections responsive
- Lighthouse performance score > 90
EOF
)"
```

#### Issue 3.3: Build Services Page

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Build services page" \
  --label "engineering,content" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Build the Services page listing each NorthOps offering with descriptions, scope, and relevant tech stacks.

## Tasks
- [ ] One section per service with title, description, and tech tags
- [ ] Visual hierarchy distinguishing primary and secondary services
- [ ] CTA to contact for each service
- [ ] Responsive layout

## Acceptance Criteria
- All services from Issue 1.1 represented with real descriptions
- Each service has a clear CTA
- Page is responsive
EOF
)"
```

#### Issue 3.4: Build About Page

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Build about page" \
  --label "engineering,content" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Build the About page with the brand narrative, founder bios, and company values.

## Tasks
- [ ] Brand narrative section (from Issue 2.4)
- [ ] Founder bios with photos (from Issue 2.5)
- [ ] Values or principles section (optional, only if genuine)
- [ ] Responsive layout

## Acceptance Criteria
- About page renders with real narrative and bios
- No placeholder content
- Responsive
EOF
)"
```

#### Issue 3.5: Build Contact Page

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Build contact page" \
  --label "engineering" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Build a contact page with a working contact form and direct contact information.

## Tasks
- [ ] Contact form (name, email, message) with server-side validation
- [ ] Form submission sends email via Laravel Mail
- [ ] Display direct email address and location (Sudbury, ON)
- [ ] Success/error states for form submission
- [ ] Rate limiting on form endpoint

## Acceptance Criteria
- Form submits and sends email
- Validation errors display inline
- Rate limited to prevent abuse
- Responsive
EOF
)"
```

#### Issue 3.6: Implement SEO and Meta Tags

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Implement SEO and meta tags" \
  --label "engineering" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Add proper meta tags, Open Graph tags, structured data, and sitemap for SEO.

## Tasks
- [ ] Title and description meta tags per page
- [ ] Open Graph and Twitter Card tags
- [ ] JSON-LD structured data (Organization, Person for founders)
- [ ] Generate sitemap.xml
- [ ] robots.txt
- [ ] Canonical URLs

## Acceptance Criteria
- Each page has unique title/description
- Social sharing previews render correctly
- Sitemap accessible at /sitemap.xml
- Structured data validates in Google's testing tool
EOF
)"
```

#### Issue 3.7: Set Up SSR and Performance Optimization

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Set up SSR and performance optimization" \
  --label "engineering" \
  --milestone "M3: Website Rewrite" \
  --body "$(cat <<'EOF'
## Description
Enable Inertia SSR for fast initial page loads and optimize assets for production.

## Tasks
- [ ] Enable and test Inertia SSR (already scaffolded — verify it works)
- [ ] Configure asset optimization (image compression, font subsetting)
- [ ] Set up caching headers in Caddy config
- [ ] Verify Lighthouse scores (Performance > 90, Accessibility > 90)

## Acceptance Criteria
- SSR renders pages server-side on first load
- Lighthouse Performance > 90 on all pages
- Lighthouse Accessibility > 90 on all pages
EOF
)"
```

### Milestone 4: Operational Infrastructure

#### Issue 4.1: Draft Client Contract Template

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Draft client contract template" \
  --label "ops" \
  --milestone "M4: Operational Infrastructure" \
  --body "$(cat <<'EOF'
## Description
Create a reusable contract template for client engagements. Must cover scope, payment, IP, and termination.

## Tasks
- [ ] Draft master services agreement (MSA) template
- [ ] Draft statement of work (SOW) template
- [ ] Include sections: scope, deliverables, timeline, payment terms, IP ownership, confidentiality, termination
- [ ] Have reviewed by a lawyer (flag for external review)

## Acceptance Criteria
- MSA and SOW templates in markdown or docx
- All standard clauses covered
- Flagged for legal review before first use
EOF
)"
```

#### Issue 4.2: Set Up Invoicing and Payment

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Set up invoicing and payment" \
  --label "ops" \
  --milestone "M4: Operational Infrastructure" \
  --body "$(cat <<'EOF'
## Description
Choose and configure an invoicing tool. Set up payment processing.

## Tasks
- [ ] Evaluate options (Stripe Invoicing, Wave, FreshBooks, plain PDF)
- [ ] Set up chosen tool with NorthOps branding
- [ ] Create invoice template matching brand
- [ ] Configure payment methods (bank transfer, credit card)
- [ ] Set up tax handling (HST for Ontario)

## Acceptance Criteria
- Can generate and send a branded invoice
- At least one electronic payment method active
- HST calculated correctly
EOF
)"
```

#### Issue 4.3: Write Client Onboarding SOP

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write client onboarding SOP" \
  --label "ops" \
  --milestone "M4: Operational Infrastructure" \
  --body "$(cat <<'EOF'
## Description
Document the step-by-step process for onboarding a new client, from first contact to kickoff.

## Tasks
- [ ] Define the onboarding steps (inquiry → discovery call → proposal → contract → kickoff)
- [ ] Create a checklist for each step
- [ ] Define what information to collect from the client
- [ ] Define communication templates (intro email, proposal email, kickoff email)

## Acceptance Criteria
- A markdown SOP document with numbered steps and checklists
- Email templates for each stage
EOF
)"
```

#### Issue 4.4: Set Up CI/CD Pipeline Templates

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Set up CI/CD pipeline templates" \
  --label "engineering,ops" \
  --milestone "M4: Operational Infrastructure" \
  --body "$(cat <<'EOF'
## Description
Create reusable CI/CD pipeline templates for common project types (Laravel, Node/React, static sites).

## Tasks
- [ ] GitHub Actions workflow: Laravel (lint, test, deploy)
- [ ] GitHub Actions workflow: Node/React (lint, test, build, deploy)
- [ ] GitHub Actions workflow: Static site (build, deploy)
- [ ] Deployer recipe for Laravel projects
- [ ] Document usage in README

## Acceptance Criteria
- Three workflow templates in a reusable format
- Each template tested on at least one project
- Documentation for how to use each template
EOF
)"
```

#### Issue 4.5: Set Up Project Management Tooling

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Set up project management tooling" \
  --label "ops" \
  --milestone "M4: Operational Infrastructure" \
  --body "$(cat <<'EOF'
## Description
Decide on and configure project management tools for internal and client work.

## Tasks
- [ ] Evaluate options (GitHub Projects, Linear, Notion, plain markdown)
- [ ] Set up chosen tool for internal tracking
- [ ] Define how client projects are tracked (separate boards? labels?)
- [ ] Create a project template for new client engagements

## Acceptance Criteria
- Project management tool configured and accessible to both founders
- A template exists for spinning up new client projects
EOF
)"
```

### Milestone 5: Marketing & Launch Prep

#### Issue 5.1: Set Up Social Media Presence

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Set up social media presence" \
  --label "marketing" \
  --milestone "M5: Marketing & Launch Prep" \
  --body "$(cat <<'EOF'
## Description
Create and configure social media accounts for NorthOps on relevant platforms.

## Tasks
- [ ] Create LinkedIn company page
- [ ] Create X/Twitter account (if decided)
- [ ] Create GitHub organization page (if moving from user account)
- [ ] Set consistent branding (logo, banner, bio) across all platforms
- [ ] Link all profiles to northops.ca

## Acceptance Criteria
- At least LinkedIn and GitHub profiles live with consistent branding
- All profiles link back to northops.ca
EOF
)"
```

#### Issue 5.2: Write Launch Announcement

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Write launch announcement" \
  --label "marketing,content" \
  --milestone "M5: Marketing & Launch Prep" \
  --body "$(cat <<'EOF'
## Description
Write the launch announcement for NorthOps. Will be posted on LinkedIn, sent to network, and published on the website.

## Tasks
- [ ] Write LinkedIn post (short, direct, no hype)
- [ ] Write email to personal networks
- [ ] Write a short launch blog post for northops.ca (optional)

## Acceptance Criteria
- LinkedIn post ready to publish
- Email draft ready to send
- All copy reviewed by both founders
EOF
)"
```

#### Issue 5.3: Build Initial Outreach List

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Build initial outreach list" \
  --label "marketing" \
  --milestone "M5: Marketing & Launch Prep" \
  --body "$(cat <<'EOF'
## Description
Compile a list of people and companies to notify about the launch. Personal networks, former clients, local businesses.

## Tasks
- [ ] Russell's network: former clients, colleagues, local contacts
- [ ] Luc's network: former clients, colleagues, local contacts
- [ ] Identify 10-20 agencies/startups/SMBs to reach out to cold
- [ ] Categorize: warm (personal connection) vs. cold (no prior relationship)

## Acceptance Criteria
- A spreadsheet or markdown list with name, company, relationship type, and contact method
- At least 30 contacts total
EOF
)"
```

#### Issue 5.4: Prepare Case Studies or Portfolio Pieces

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Prepare case studies or portfolio pieces" \
  --label "content,marketing" \
  --milestone "M5: Marketing & Launch Prep" \
  --body "$(cat <<'EOF'
## Description
Prepare 2-3 case studies or portfolio pieces from past work (with permission) to demonstrate capability.

## Tasks
- [ ] Identify 2-3 past projects that showcase NorthOps-relevant skills
- [ ] Write each case study: problem, approach, outcome, tech stack
- [ ] Get permission from past clients if needed
- [ ] Format for website and/or PDF

## Acceptance Criteria
- 2-3 case studies with real details (anonymized if needed)
- Each case study covers problem, approach, outcome, and tech
EOF
)"
```

### Milestone 6: Public Launch

#### Issue 6.1: Final Website QA

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Final website QA" \
  --label "engineering" \
  --milestone "M6: Public Launch" \
  --body "$(cat <<'EOF'
## Description
Complete QA pass on the website before public launch.

## Tasks
- [ ] Test all pages on Chrome, Firefox, Safari, Edge
- [ ] Test on mobile (iOS Safari, Android Chrome)
- [ ] Test contact form end-to-end
- [ ] Verify all links work (no 404s)
- [ ] Verify meta tags and social previews
- [ ] Verify SSL certificate
- [ ] Run Lighthouse audit on all pages
- [ ] Fix any issues found

## Acceptance Criteria
- All pages render correctly on all tested browsers
- No broken links
- Contact form works end-to-end
- Lighthouse scores > 90 for Performance and Accessibility
EOF
)"
```

#### Issue 6.2: DNS and Production Deploy

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "DNS and production deploy" \
  --label "engineering,ops" \
  --milestone "M6: Public Launch" \
  --body "$(cat <<'EOF'
## Description
Verify DNS, SSL, and production deployment are solid before going public.

## Tasks
- [ ] Verify northops.ca DNS records (A, CNAME, MX)
- [ ] Verify SSL certificate auto-renewal
- [ ] Run production deploy via `php artisan deploy`
- [ ] Verify Horizon, SSR, and scheduler services are running
- [ ] Set up uptime monitoring (UptimeRobot, Healthchecks.io, or similar)

## Acceptance Criteria
- northops.ca resolves and serves the site over HTTPS
- All systemd services running
- Uptime monitoring active and alerting
EOF
)"
```

#### Issue 6.3: Publish Launch Announcement

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Publish launch announcement" \
  --label "marketing" \
  --milestone "M6: Public Launch" \
  --body "$(cat <<'EOF'
## Description
Execute the launch: publish announcements, send emails, and go public.

## Tasks
- [ ] Publish LinkedIn post
- [ ] Send launch emails to warm contacts
- [ ] Send cold outreach to target list
- [ ] Update GitHub profile/org description
- [ ] Monitor for responses and follow up within 24 hours

## Acceptance Criteria
- All launch communications sent
- Response tracking in place
- Follow-up plan for replies
EOF
)"
```

#### Issue 6.4: Post-Launch Retrospective

```bash
gh issue create \
  --repo jonesrussell/northops \
  --title "Post-launch retrospective" \
  --label "ops" \
  --milestone "M6: Public Launch" \
  --body "$(cat <<'EOF'
## Description
One week after launch, run a retrospective. What worked, what didn't, what to adjust.

## Tasks
- [ ] Schedule retro meeting between Russell and Luc
- [ ] Review: website analytics, inquiries received, outreach response rates
- [ ] Document: what went well, what didn't, what to change
- [ ] Create action items for next quarter

## Acceptance Criteria
- Retro document written and stored in ops repo
- Action items created as GitHub issues
EOF
)"
```

---

## 3. GitHub Project (Projects v2)

### Create the Project

```bash
gh project create --owner jonesrussell --title "NorthOps Launch" --format json
```

> Note the `<PROJECT_NUMBER>` from the output. Use it in all subsequent commands.

### List Fields

```bash
gh project field-list <PROJECT_NUMBER> --owner jonesrussell --format json
```

### Create Custom Fields

```bash
# Priority field
gh project field-create <PROJECT_NUMBER> \
  --owner jonesrussell \
  --name "Priority" \
  --data-type "SINGLE_SELECT" \
  --single-select-options "P0: Critical,P1: High,P2: Medium,P3: Low"

# Milestone field (for visual grouping on the board)
gh project field-create <PROJECT_NUMBER> \
  --owner jonesrussell \
  --name "Phase" \
  --data-type "SINGLE_SELECT" \
  --single-select-options "M1: Definition,M2: Brand,M3: Website,M4: Ops,M5: Marketing,M6: Launch"

# Owner field
gh project field-create <PROJECT_NUMBER> \
  --owner jonesrussell \
  --name "Owner" \
  --data-type "SINGLE_SELECT" \
  --single-select-options "Russell,Luc,Both"
```

### Add Issues to Project

After all issues are created, add them:

```bash
# Get all issue URLs
ISSUES=$(gh issue list --repo jonesrussell/northops --state open --json url --jq '.[].url')

# Add each to the project
for URL in $ISSUES; do
  gh project item-add <PROJECT_NUMBER> --owner jonesrussell --url "$URL"
done
```

---

## 4. Repository Structure

### jonesrussell/northops (website — already exists)

```
northops/
├── app/
│   ├── Http/Controllers/
│   │   ├── HomeController.php
│   │   ├── ServicesController.php
│   │   ├── AboutController.php
│   │   └── ContactController.php
│   ├── Mail/
│   │   └── ContactFormSubmission.php
│   └── Actions/Fortify/
├── resources/
│   ├── js/
│   │   ├── pages/
│   │   │   ├── Home.vue
│   │   │   ├── Services.vue
│   │   │   ├── About.vue
│   │   │   └── Contact.vue
│   │   ├── components/
│   │   │   ├── HeroSection.vue
│   │   │   ├── ServiceCard.vue
│   │   │   ├── TeamMember.vue
│   │   │   ├── ContactForm.vue
│   │   │   └── Footer.vue
│   │   ├── layouts/
│   │   │   └── AppLayout.vue
│   │   └── composables/
│   └── views/
│       └── emails/
│           └── contact.blade.php
├── routes/
│   ├── web.php
│   └── settings.php
├── tests/
│   └── Feature/
│       ├── HomeTest.php
│       ├── ContactFormTest.php
│       └── SeoTest.php
├── CLAUDE.md
├── LAUNCH_PLAN.md
└── README.md
```

### jonesrussell/northops-ops

```
northops-ops/
├── contracts/
│   ├── msa-template.md
│   └── sow-template.md
├── sops/
│   ├── client-onboarding.md
│   ├── project-kickoff.md
│   └── invoicing.md
├── templates/
│   ├── proposal-template.md
│   ├── invoice-template.md
│   └── email/
│       ├── intro.md
│       ├── proposal-followup.md
│       └── kickoff.md
├── retros/
│   └── .gitkeep
└── README.md
```

### jonesrussell/northops-pipelines

```
northops-pipelines/
├── github-actions/
│   ├── laravel-ci.yml
│   ├── node-ci.yml
│   └── static-deploy.yml
├── deployer/
│   ├── laravel-recipe.php
│   └── deploy.php
├── scripts/
│   ├── setup-server.sh
│   └── backup-db.sh
└── README.md
```

### jonesrussell/northops-brand

```
northops-brand/
├── logo/
│   ├── northops-logo.svg
│   ├── northops-icon.svg
│   ├── northops-wordmark.svg
│   └── exports/
│       ├── logo-16.png
│       ├── logo-32.png
│       ├── logo-128.png
│       ├── logo-512.png
│       └── favicon.ico
├── colours/
│   └── palette.md
├── typography/
│   └── type-spec.md
├── voice/
│   └── voice-guidelines.md
└── README.md
```

---

## 5. README Templates

### Organization / Profile README

```markdown
# NorthOps

Senior engineering for teams that need it done right.

We are a two-person engineering company based in Northern Ontario, specializing in architecture, pipelines, automation, and modern web stacks. We work with agencies, startups, and SMBs who need senior-level engineering without the overhead of a full agency.

## What We Do

- **Platform Architecture** — Laravel, Rails, Node.js, Go
- **Frontend Engineering** — React, Vue, TypeScript
- **CI/CD & Automation** — GitHub Actions, Deployer, custom pipelines
- **Content Pipelines** — CMS integration, data processing, publishing workflows
- **DevOps** — Server provisioning, monitoring, deployment automation

## Repositories

| Repo | Purpose |
|------|---------|
| [northops](https://github.com/jonesrussell/northops) | Company website (Laravel 12 + Vue 3 + Inertia) |
| [northops-ops](https://github.com/jonesrussell/northops-ops) | SOPs, contracts, templates |
| [northops-pipelines](https://github.com/jonesrussell/northops-pipelines) | CI/CD templates and deploy scripts |
| [northops-brand](https://github.com/jonesrussell/northops-brand) | Logo, colours, typography, voice |

## Contact

- **Web:** [northops.ca](https://northops.ca)
- **Location:** Sudbury, Ontario, Canada
```

### Website Repo README

```markdown
# NorthOps Website

The company website for NorthOps, built with Laravel 12, Vue 3, Inertia.js, and Tailwind CSS 4.

## Stack

- **Backend:** Laravel 12, PHP 8.4
- **Frontend:** Vue 3, TypeScript, Tailwind CSS 4
- **Routing:** Inertia.js (server-driven SPA)
- **Auth:** Laravel Fortify (2FA)
- **Queue:** Laravel Horizon + Redis
- **Server:** Caddy + PHP-FPM
- **Deploy:** Deployer (zero-downtime)

## Development

```bash
composer install && npm install
composer run dev           # Laravel + Vite + queue + logs
composer run dev:ssr       # With SSR
```

## Testing

```bash
composer run test          # Lint + PestPHP
php artisan test           # PestPHP only
```

## Deployment

```bash
php artisan deploy         # Deploy to northops.ca
```

## Structure

See [CLAUDE.md](CLAUDE.md) for architecture details and conventions.
```

### Ops Repo README

```markdown
# NorthOps Ops

Operational documents for NorthOps: contracts, SOPs, templates, and retrospectives.

## Contents

- `contracts/` — MSA and SOW templates
- `sops/` — Standard operating procedures (onboarding, invoicing, kickoff)
- `templates/` — Proposal, invoice, and email templates
- `retros/` — Post-project and periodic retrospectives

## Usage

All documents are markdown. Copy and customize per engagement.

## Confidentiality

This is a private repository. Do not share contract templates or client-specific documents externally.
```

---

## 6. Brand Narrative

NorthOps is a senior engineering company based in Northern Ontario. We build, fix, and automate software systems for agencies, startups, and small-to-medium businesses.

We exist because most teams don't need another agency. They need two senior engineers who can look at the system, understand the constraints, and ship the work. No account managers, no project coordinators, no layers between us and the code.

Russell brings deep experience in PHP and Laravel, content management systems, publishing pipelines, and platform architecture. He builds the backend systems that content and data flow through — and the deployment automation that keeps them running. Luc brings expertise in TypeScript, React, Ruby on Rails, and Python. He builds the interfaces people use and the tooling that makes development faster.

Together, we cover the full stack without handoff gaps. Backend, frontend, infrastructure, CI/CD. One team, two people, no coordination overhead.

We focus on pipelines and automation because that's where most teams lose time. Manual deploys, broken CI, content workflows held together with duct tape — these are the problems we solve. Not with a product, but with engineering applied to the specific system.

Senior-only matters because the work we do requires judgement. Architecture decisions, trade-off analysis, debugging production systems — these aren't tasks you hand to a junior and review later. Every hour of NorthOps time is senior engineering time.

We're explicit about what we do and what we don't. We don't do branding exercises, growth hacking, or Agile coaching. We write code, build systems, and automate the tedious parts so your team can focus on the work that matters.

---

## 7. Founder Bios

### Russell Jones

Russell is a senior software engineer specializing in PHP, Laravel, and platform architecture. He has spent years building content management systems, publishing pipelines, and the backend infrastructure that content-driven products depend on. His work focuses on the parts of the system that handle data flow — ingestion, transformation, storage, and delivery — and the CI/CD automation that keeps those systems deployable and reliable. He also handles server provisioning, monitoring, and deployment automation. Russell is based in Sudbury, Ontario.

### Luc Hebert

Luc is a senior software engineer specializing in TypeScript, React, Ruby on Rails, and Python. He builds the frontend interfaces and developer tooling that make complex systems usable. His experience spans modern single-page applications, API integration, and the build and deploy pipelines that support frontend development at scale. He brings a strong focus on DevOps practices — automated testing, continuous integration, and infrastructure-as-code. Luc is based in Northern Ontario.

---

## 8. Execution Script

To run everything in sequence, use the following script. Save as `setup-github.sh` and execute.

```bash
#!/usr/bin/env bash
set -euo pipefail

REPO="jonesrussell/northops"

echo "=== Creating Labels ==="
gh label create "strategy"    --color "0E8A16" --description "Company positioning, market, pricing" --repo "$REPO" 2>/dev/null || true
gh label create "content"     --color "1D76DB" --description "Copy, narrative, bios, case studies"  --repo "$REPO" 2>/dev/null || true
gh label create "engineering" --color "D93F0B" --description "Code, infrastructure, CI/CD"         --repo "$REPO" 2>/dev/null || true
gh label create "branding"    --color "BFD4F2" --description "Logo, typography, visual identity"    --repo "$REPO" 2>/dev/null || true
gh label create "ops"         --color "FEF2C0" --description "SOPs, legal, finance, tools"          --repo "$REPO" 2>/dev/null || true
gh label create "marketing"   --color "C2E0C6" --description "Launch, outreach, positioning"        --repo "$REPO" 2>/dev/null || true
gh label create "design"      --color "D4C5F9" --description "UI/UX, layout, responsive"           --repo "$REPO" 2>/dev/null || true

echo "=== Creating Milestones ==="
gh api repos/$REPO/milestones --method POST -f title="M1: Company Definition & Positioning" -f description="Define what NorthOps is, who it serves, what it offers, and how it is positioned." -f state="open" -f due_on="2026-03-25T00:00:00Z"
gh api repos/$REPO/milestones --method POST -f title="M2: Brand Identity & Narrative" -f description="Establish visual identity, tone, and brand narrative." -f state="open" -f due_on="2026-04-08T00:00:00Z"
gh api repos/$REPO/milestones --method POST -f title="M3: Website Rewrite" -f description="Rebuild the website with real content and structure." -f state="open" -f due_on="2026-05-06T00:00:00Z"
gh api repos/$REPO/milestones --method POST -f title="M4: Operational Infrastructure" -f description="Contracts, invoicing, SOPs, CI/CD, onboarding." -f state="open" -f due_on="2026-05-20T00:00:00Z"
gh api repos/$REPO/milestones --method POST -f title="M5: Marketing & Launch Prep" -f description="Launch materials, outreach, social presence." -f state="open" -f due_on="2026-06-03T00:00:00Z"
gh api repos/$REPO/milestones --method POST -f title="M6: Public Launch" -f description="Go live. Open for business." -f state="open" -f due_on="2026-06-17T00:00:00Z"

echo "=== Milestones created. Issue creation commands are in LAUNCH_PLAN.md ==="
echo "=== Run each gh issue create command from the plan, then add to project ==="
```

---

## Next Steps

1. Review this plan with Luc
2. Run the execution script to create labels and milestones
3. Create issues (commands above) — can be scripted or run individually
4. Create the GitHub Project and add issues
5. Create the three new repos (ops, pipelines, brand)
6. Start working through M1
