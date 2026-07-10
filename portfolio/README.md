# Leandra Pearson — Portfolio Site

A single-file, self-contained portfolio site built as a Design Component (`.dc.html`). Open `Leandra Pearson Portfolio Site.dc.html` directly in a browser — no build step, bundler, or server required.

## What's inside

- **Persona-adaptive welcome popup** — visitors enter their name and pick a lens (Recruiter / Founder / Fellow Designer); the site reorders and expands project emphasis accordingly.
- **Projects** — Executely, IBM BOB Hackathon (Locci Box), and Meal Prep Pal, each with full project detail (problem, solution, results) revealed on click.
- **Playground** — a chaotic floating-photo showcase styled like Y2K OLED touchscreens.
- **Live AI chat** ("Ask about my work") — powered by `window.claude.complete`, grounded in a fixed set of facts about Leandra so it won't invent claims. Includes 3 suggested questions plus free-form input.
- **Hero video background** — silent, looping, full-bleed.
- **Contact form** — opens a `mailto:` to leandrastudios@gmail.com.
- Fully responsive: hamburger nav on mobile/tablet, collapsing grids, scaled playground canvas.

## Structure

```
Leandra Pearson Portfolio Site.dc.html   ← the site (markup + logic inline)
support.js                                ← DC runtime (required, do not remove)
assets/                                    ← images, video, logos used by the site
```

## Important: this is a Design Component, not plain HTML

This file depends on `support.js` in the same folder to render — it uses a small custom template runtime (`<sc-if>`, `<sc-for>`, `{{ }}` bindings) rather than plain JSX/React script tags. **Do not delete or rename `support.js`.**

## Deploying elsewhere (e.g. GitHub Pages)

1. Keep `Leandra Pearson Portfolio Site.dc.html`, `support.js`, and the `assets/` folder together in the same relative structure.
2. If you want a clean `index.html` entry point for GitHub Pages, either:
   - Rename `Leandra Pearson Portfolio Site.dc.html` to `index.html` (the `.dc.html` extension is not required to function — it's just a naming convention from the design tool that produced it), or
   - Add a minimal `index.html` that redirects to it.
3. Push the whole folder to your GitHub repo, then enable GitHub Pages (Settings → Pages → deploy from branch, root).

## Live AI chat note

The "Ask about my work" feature calls `window.claude.complete(...)`, a helper injected by the design tool's preview environment. **It will not work once hosted outside that environment** (e.g. on GitHub Pages) unless you wire it to a real backend/API endpoint. If you want the chat to keep working after deployment, that's a follow-up task: swapping the call for a real Claude API request from your own backend (an API key should never be exposed in client-side code).

## Content notes

- All project links (Figma prototype, box.locci.cloud, cook-craft-bot.lovable.app) are live external links.
- Video/GIF assets are stored in `assets/` and referenced by relative path — keep the folder structure intact.
