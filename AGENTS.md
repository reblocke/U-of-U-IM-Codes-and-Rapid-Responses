# AGENTS

## Project Purpose

This public repository hosts the Quarto website and teaching materials for the
University of Utah Internal Medicine Code Blue and Rapid Response seminar. It also
contains limited, public abstract/poster metadata from course-evaluation work.

## Public And Data-Safety Rules

- Treat the repository as public. Do not add PHI, trainee identifiers, private survey
  exports, credentials, unpublished drafts, or publisher-formatted article text.
- Course-evaluation row-level data are restricted even when de-identified. Keep REDCap
  exports, survey PDFs, timestamps, local analysis workbooks, and free-text responses
  outside Git.
- Link DOI, PubMed, journal, guideline, and institutional resources instead of copying
  third-party full text unless redistribution rights are explicit.
- Keep the 2025 and 2026 ATS outputs framed as abstracts/posters. Do not claim a journal
  manuscript or peer-reviewed full paper.

## Orientation

- Start with `README.md` and `llms.txt`.
- Source pages live in top-level `.qmd` files; slide sources live in `slides/*.qmd`.
- `docs/` is the rendered GitHub Pages output and should be regenerated with Quarto.
- `Publications/` is for public abstract metadata and source code, not raw evaluation
  data or draft working files.
- `data_dictionary.md` and `data_dictionary.csv` define the course-evaluation schema and
  privacy boundaries.

## Workflow

Use the repository root for all site work:

```bash
quarto check
quarto render
quarto preview
```

When editing the course, update source `.qmd` files first, then render and inspect the
resulting `docs/` site. Do not hand-edit generated HTML except as part of a temporary
diagnostic that is not committed.

## Verification Before Publishing

- Run `git diff --check`.
- Validate `CITATION.cff` after citation edits.
- For site configuration, navigation, or rendered metadata changes, run `quarto check` and `quarto render`. For local content/layout edits, render the affected page; instruction-only prose needs affected-reference and whitespace checks.
- Confirm `docs/llms.txt`, `docs/search.json`, and `docs/sitemap.xml` exist after render.
- After shared site/navigation changes, browser-check the home, modules, resources, facilitator pages and one slide deck on desktop/mobile. After a page-specific change, inspect the affected page and links.
- Search for stale generic readiness text, stale DOI claims, raw survey exports, draft
  files, trainee identifiers, `.Rhistory`, `.RData`, Quarto caches, and generated
  publication renders before committing.
