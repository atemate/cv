# AGENTS.md

This file provides guidance to Claude Code and other coding agents when working with code in this repository.

## What this is

A single-source CV for Artem Yushkovskiy, authored in YAML and rendered to PDF/HTML/PNG/Markdown/Typst by [RenderCV](https://rendercv.com/). There is no application code — the deliverable is the rendered CV.

## Commands

```bash
# Render all output formats into out/ (requires uv)
uv run --with "rendercv[full]" rendercv render Artem_Yushkovskiy_CV.yaml -o out
```

There is no build/lint/test suite. Validation is the render step: if RenderCV renders without error, the YAML is valid against its schema (pinned via the `# yaml-language-server: $schema=...` header on line 1).

## Architecture

- **`Artem_Yushkovskiy_CV.yaml`** — the single source of truth. Contains both content (`cv:` — `sections` for summary/experience/projects/education/skills) and presentation (`design:` — theme `engineeringresumes`, A4 page margins, brand color `#1a5276`, typography). Edit this file for any change.
- **`out/`** — generated artifacts. Gitignored **except** `out/*.pdf`, which is committed so GitHub links (README, elsewhere) resolve. Never hand-edit anything in `out/`; it is regenerated from the YAML.
- **`themes/engineeringresumes.yaml`** — a standalone reference snippet of an alternate `design:` block. It is *not* consumed by the render command (the active design lives inline in the main YAML). Treat it as a saved variant.
- **`.github/workflows/render-and-deploy.yaml`** — on push to `main`, renders the CV and deploys `out/` to GitHub Pages (`index.html` from the rendered HTML, plus PDF and PNGs). Editing the YAML and pushing to `main` is the full publish path.

## Conventions

- YAML content uses inline Markdown for links (`[text](url)`) and emphasis; RenderCV converts it per output format.
- Commented-out lines in the YAML (e.g. inside `experience` highlights and `skills`) are intentional draft/interview-prep notes kept alongside the live content — preserve them unless asked to remove.
- `.hidden/` holds private, untracked interview-prep notes. It is not part of the CV and is not committed — do not add it to git or reference its contents in tracked files.
