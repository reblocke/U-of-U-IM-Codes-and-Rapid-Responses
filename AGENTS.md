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
- Run `quarto check` and `quarto render` for site or metadata changes.
- Confirm `docs/llms.txt`, `docs/search.json`, and `docs/sitemap.xml` exist after render.
- Browser-check the rendered home page, modules page, resources page, facilitator page,
  and at least one slide deck on desktop and mobile viewports.
- Search for stale generic readiness text, stale DOI claims, raw survey exports, draft
  files, trainee identifiers, `.Rhistory`, `.RData`, Quarto caches, and generated
  publication renders before committing.
