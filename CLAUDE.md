# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

NorthOps is a full-stack Laravel 12 + Vue 3 application using Inertia.js for server-driven SPA routing with SSR support. Authentication is handled by Laravel Fortify (including 2FA). Queue processing uses Laravel Horizon with Redis.

## Commands

### Development
```bash
composer run dev          # Starts Laravel server, queue worker, log tail, and Vite dev server
composer run dev:ssr      # Same but with SSR instead of Vite HMR
```

### Testing
```bash
composer run test                        # Full suite: lint check + PestPHP tests
php artisan test                         # Run PestPHP tests only
php artisan test --filter=TestClassName  # Run a single test class
php artisan test tests/Feature/Foo.php   # Run a specific test file
```

### Linting & Formatting
```bash
composer run lint          # PHP: Laravel Pint (auto-fix)
composer run test:lint     # PHP: Pint check only (no fix)
npm run lint               # JS/TS/Vue: ESLint (auto-fix)
npm run format             # JS/TS/Vue: Prettier (auto-fix)
npm run format:check       # Prettier check only
```

### Build
```bash
npm run build              # Vite production build (SPA)
npm run build:ssr          # Vite production build with SSR
```

### Deployment
```bash
php artisan deploy         # Deploy via Deployer to coforge.xyz
```

## Architecture

### Request Flow
Inertia.js bridges Laravel and Vue: Laravel controllers return `Inertia::render('PageName', $props)` which renders Vue page components in `resources/js/pages/`. No separate API layer or client-side router needed — Laravel routes drive navigation.

### Key Directories
- `app/Http/Controllers/` — Controllers return Inertia responses
- `app/Actions/Fortify/` — Auth logic (create user, reset password, update profile)
- `app/Concerns/` — Shared validation traits (e.g., `HasProfileValidation`)
- `resources/js/pages/` — Vue page components (map 1:1 with Inertia::render calls)
- `resources/js/components/` — Reusable Vue components
- `resources/js/layouts/` — Layout wrappers (AppLayout, AuthLayout, SettingsLayout)
- `resources/js/composables/` — Vue composables (useAppearance, useInitials)
- `routes/web.php` — Main routes; `routes/settings.php` — Settings routes

### Conventions
- **PHP style**: Laravel Pint (PSR-12 based)
- **Frontend**: TypeScript strict mode, Vue 3 `<script setup>` SFC style, Tailwind CSS 4
- **Testing**: PestPHP 4 with Laravel plugin; tests use in-memory SQLite
- **Route generation**: Laravel Wayfinder auto-generates typed route helpers from PHP routes (run `php artisan wayfinder:generate` or triggered by Vite plugin)

### Deployment
Caddy serves the app with PHP-FPM 8.4. Three systemd user services run alongside: Horizon (queue), Inertia SSR server, and the Laravel scheduler. Deployer handles zero-downtime deploys with shared storage/SQLite and build steps.
