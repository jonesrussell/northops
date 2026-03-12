#!/usr/bin/env bash
set -euo pipefail

REPO="jonesrussell/northops"

echo "=== Phase 1: Labels ==="
gh label create "strategy"    --color "0E8A16" --description "Company positioning, market, pricing" --repo "$REPO" 2>/dev/null || echo "  strategy exists"
gh label create "content"     --color "1D76DB" --description "Copy, narrative, bios, case studies"  --repo "$REPO" 2>/dev/null || echo "  content exists"
gh label create "engineering" --color "D93F0B" --description "Code, infrastructure, CI/CD"         --repo "$REPO" 2>/dev/null || echo "  engineering exists"
gh label create "branding"    --color "BFD4F2" --description "Logo, typography, visual identity"    --repo "$REPO" 2>/dev/null || echo "  branding exists"
gh label create "ops"         --color "FEF2C0" --description "SOPs, legal, finance, tools"          --repo "$REPO" 2>/dev/null || echo "  ops exists"
gh label create "marketing"   --color "C2E0C6" --description "Launch, outreach, positioning"        --repo "$REPO" 2>/dev/null || echo "  marketing exists"
gh label create "design"      --color "D4C5F9" --description "UI/UX, layout, responsive"           --repo "$REPO" 2>/dev/null || echo "  design exists"

echo ""
echo "=== Phase 2: Milestones ==="
gh api repos/$REPO/milestones --method POST -f title="M1: Company Definition & Positioning" -f description="Define what NorthOps is, who it serves, what it offers, and how it is positioned." -f state="open" -f due_on="2026-03-25T00:00:00Z" --silent
echo "  M1 created"
gh api repos/$REPO/milestones --method POST -f title="M2: Brand Identity & Narrative" -f description="Establish visual identity, tone, and brand narrative." -f state="open" -f due_on="2026-04-08T00:00:00Z" --silent
echo "  M2 created"
gh api repos/$REPO/milestones --method POST -f title="M3: Website Rewrite" -f description="Rebuild the website with real content and structure." -f state="open" -f due_on="2026-05-06T00:00:00Z" --silent
echo "  M3 created"
gh api repos/$REPO/milestones --method POST -f title="M4: Operational Infrastructure" -f description="Contracts, invoicing, SOPs, CI/CD, onboarding." -f state="open" -f due_on="2026-05-20T00:00:00Z" --silent
echo "  M4 created"
gh api repos/$REPO/milestones --method POST -f title="M5: Marketing & Launch Prep" -f description="Launch materials, outreach, social presence." -f state="open" -f due_on="2026-06-03T00:00:00Z" --silent
echo "  M5 created"
gh api repos/$REPO/milestones --method POST -f title="M6: Public Launch" -f description="Go live. Open for business." -f state="open" -f due_on="2026-06-17T00:00:00Z" --silent
echo "  M6 created"

echo ""
echo "=== Phase 3: Issues ==="

create_issue() {
  local title="$1" labels="$2" milestone="$3" body="$4"
  local url
  url=$(gh issue create --repo "$REPO" --title "$title" --label "$labels" --milestone "$milestone" --body "$body" 2>&1)
  echo "  $url"
}

# --- M1: Company Definition & Positioning ---
echo "-- M1 Issues --"

create_issue "Define service offerings" "strategy" "M1: Company Definition & Positioning" "$(cat <<'BODY'
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
BODY
)"

create_issue "Define target client profiles" "strategy" "M1: Company Definition & Positioning" "$(cat <<'BODY'
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
BODY
)"

create_issue "Define pricing model" "strategy,ops" "M1: Company Definition & Positioning" "$(cat <<'BODY'
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
BODY
)"

create_issue "Write company positioning statement" "strategy,content" "M1: Company Definition & Positioning" "$(cat <<'BODY'
## Description
Write a short, direct positioning statement that answers: what NorthOps is, who it's for, and why it exists.

## Tasks
- [ ] Draft a 2-3 sentence positioning statement
- [ ] Draft a one-paragraph expanded version
- [ ] Review with both founders for accuracy

## Acceptance Criteria
- A positioning statement that is factually accurate, non-fluffy, and distinguishes NorthOps from generic dev shops
- Both founders sign off
BODY
)"

create_issue "Define competitive differentiation" "strategy" "M1: Company Definition & Positioning" "$(cat <<'BODY'
## Description
Articulate what makes NorthOps different from other dev shops, agencies, and freelancers. No superlatives — just facts.

## Tasks
- [ ] List 3-5 concrete differentiators
- [ ] For each, explain why it matters to the target client
- [ ] Identify what NorthOps is NOT (anti-positioning)

## Acceptance Criteria
- A list of differentiators with supporting rationale
- At least 2 anti-positioning statements ("we are not X")
BODY
)"

# --- M2: Brand Identity & Narrative ---
echo "-- M2 Issues --"

create_issue "Design logo and wordmark" "branding,design" "M2: Brand Identity & Narrative" "$(cat <<'BODY'
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
BODY
)"

create_issue "Define colour palette and typography" "branding,design" "M2: Brand Identity & Narrative" "$(cat <<'BODY'
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
BODY
)"

create_issue "Write brand voice guidelines" "branding,content" "M2: Brand Identity & Narrative" "$(cat <<'BODY'
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
BODY
)"

create_issue "Write brand narrative" "branding,content" "M2: Brand Identity & Narrative" "$(cat <<'BODY'
## Description
Write the core brand narrative for NorthOps. This is the foundation for the About page and all outward-facing copy.

## Tasks
- [ ] Write a 300-500 word narrative covering: what NorthOps is, the problem it solves, how the founders complement each other, and why senior-only matters
- [ ] Review for accuracy and tone (no fluff, no saviour narrative)
- [ ] Get sign-off from both founders

## Acceptance Criteria
- A brand narrative document, 300-500 words
- Factually accurate, technically grounded, no marketing fluff
BODY
)"

create_issue "Write founder bios" "content" "M2: Brand Identity & Narrative" "$(cat <<'BODY'
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
BODY
)"

# --- M3: Website Rewrite ---
echo "-- M3 Issues --"

create_issue "Design site layout and information architecture" "design,engineering" "M3: Website Rewrite" "$(cat <<'BODY'
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
BODY
)"

create_issue "Build home page" "engineering,design" "M3: Website Rewrite" "$(cat <<'BODY'
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
BODY
)"

create_issue "Build services page" "engineering,content" "M3: Website Rewrite" "$(cat <<'BODY'
## Description
Build the Services page listing each NorthOps offering with descriptions, scope, and relevant tech stacks.

## Tasks
- [ ] One section per service with title, description, and tech tags
- [ ] Visual hierarchy distinguishing primary and secondary services
- [ ] CTA to contact for each service
- [ ] Responsive layout

## Acceptance Criteria
- All services from the service offerings document represented with real descriptions
- Each service has a clear CTA
- Page is responsive
BODY
)"

create_issue "Build about page" "engineering,content" "M3: Website Rewrite" "$(cat <<'BODY'
## Description
Build the About page with the brand narrative, founder bios, and company values.

## Tasks
- [ ] Brand narrative section
- [ ] Founder bios with photos
- [ ] Values or principles section (optional, only if genuine)
- [ ] Responsive layout

## Acceptance Criteria
- About page renders with real narrative and bios
- No placeholder content
- Responsive
BODY
)"

create_issue "Build contact page" "engineering" "M3: Website Rewrite" "$(cat <<'BODY'
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
BODY
)"

create_issue "Implement SEO and meta tags" "engineering" "M3: Website Rewrite" "$(cat <<'BODY'
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
BODY
)"

create_issue "Set up SSR and performance optimization" "engineering" "M3: Website Rewrite" "$(cat <<'BODY'
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
BODY
)"

# --- M4: Operational Infrastructure ---
echo "-- M4 Issues --"

create_issue "Draft client contract template" "ops" "M4: Operational Infrastructure" "$(cat <<'BODY'
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
BODY
)"

create_issue "Set up invoicing and payment" "ops" "M4: Operational Infrastructure" "$(cat <<'BODY'
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
BODY
)"

create_issue "Write client onboarding SOP" "ops" "M4: Operational Infrastructure" "$(cat <<'BODY'
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
BODY
)"

create_issue "Set up CI/CD pipeline templates" "engineering,ops" "M4: Operational Infrastructure" "$(cat <<'BODY'
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
BODY
)"

create_issue "Set up project management tooling" "ops" "M4: Operational Infrastructure" "$(cat <<'BODY'
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
BODY
)"

# --- M5: Marketing & Launch Prep ---
echo "-- M5 Issues --"

create_issue "Set up social media presence" "marketing" "M5: Marketing & Launch Prep" "$(cat <<'BODY'
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
BODY
)"

create_issue "Write launch announcement" "marketing,content" "M5: Marketing & Launch Prep" "$(cat <<'BODY'
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
BODY
)"

create_issue "Build initial outreach list" "marketing" "M5: Marketing & Launch Prep" "$(cat <<'BODY'
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
BODY
)"

create_issue "Prepare case studies or portfolio pieces" "content,marketing" "M5: Marketing & Launch Prep" "$(cat <<'BODY'
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
BODY
)"

# --- M6: Public Launch ---
echo "-- M6 Issues --"

create_issue "Final website QA" "engineering" "M6: Public Launch" "$(cat <<'BODY'
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
BODY
)"

create_issue "DNS and production deploy" "engineering,ops" "M6: Public Launch" "$(cat <<'BODY'
## Description
Verify DNS, SSL, and production deployment are solid before going public.

## Tasks
- [ ] Verify northops.ca DNS records (A, CNAME, MX)
- [ ] Verify SSL certificate auto-renewal
- [ ] Run production deploy via php artisan deploy
- [ ] Verify Horizon, SSR, and scheduler services are running
- [ ] Set up uptime monitoring (UptimeRobot, Healthchecks.io, or similar)

## Acceptance Criteria
- northops.ca resolves and serves the site over HTTPS
- All systemd services running
- Uptime monitoring active and alerting
BODY
)"

create_issue "Publish launch announcement" "marketing" "M6: Public Launch" "$(cat <<'BODY'
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
BODY
)"

create_issue "Post-launch retrospective" "ops" "M6: Public Launch" "$(cat <<'BODY'
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
BODY
)"

echo ""
echo "=== Phase 4: Create Project Board ==="
PROJECT_URL=$(gh project create --owner jonesrussell --title "NorthOps Launch" --format json | jq -r '.url')
PROJECT_NUMBER=$(echo "$PROJECT_URL" | grep -oP '\d+$')
echo "  Project created: $PROJECT_URL (number: $PROJECT_NUMBER)"

echo "  Creating custom fields..."
gh project field-create "$PROJECT_NUMBER" --owner jonesrussell --name "Priority" --data-type "SINGLE_SELECT" --single-select-options "P0: Critical,P1: High,P2: Medium,P3: Low" 2>/dev/null || echo "    Priority field may already exist"
gh project field-create "$PROJECT_NUMBER" --owner jonesrussell --name "Phase" --data-type "SINGLE_SELECT" --single-select-options "M1: Definition,M2: Brand,M3: Website,M4: Ops,M5: Marketing,M6: Launch" 2>/dev/null || echo "    Phase field may already exist"
gh project field-create "$PROJECT_NUMBER" --owner jonesrussell --name "Owner" --data-type "SINGLE_SELECT" --single-select-options "Russell,Luc,Both" 2>/dev/null || echo "    Owner field may already exist"

echo ""
echo "=== Phase 5: Add all issues to project ==="
gh issue list --repo "$REPO" --state open --json url --jq '.[].url' | while read -r URL; do
  gh project item-add "$PROJECT_NUMBER" --owner jonesrussell --url "$URL" 2>/dev/null && echo "  Added: $URL" || echo "  Failed: $URL"
done

echo ""
echo "=== DONE ==="
echo "Project board: $PROJECT_URL"
echo "Milestones: https://github.com/$REPO/milestones"
echo "Issues: https://github.com/$REPO/issues"
