# Annual Update Checklist

Use this checklist before publishing each new cohort version.

## Content

- Update cohort year, published date, footer, README, and `CITATION.cff`.
- Confirm author list and affiliations.
- Replace pre- and post-session survey links and QR codes.
- Confirm the course website QR slide still points to the live site.
- Replace the RRT/code manual PDF and manual QR images if the official guide changed.
- Confirm site-specific team composition, call numbers, paging workflows, and after-hours differences.
- Confirm nurse-led response team / critical care outreach team names, activation criteria, coverage hours, and expectations for resident interface.
- Ask nurse response/outreach representatives to review the collaboration module before each annual session.
- Confirm which simulation case will assess resident/nurse huddle behavior.
- Confirm preceptor guide case wording, answer prompts, timing notes, and scenario order.
- Review references for material updates to resuscitation leadership, rapid response systems, family presence, and termination of resuscitation.

## Repository

- Create a release tag for the prior cohort before large edits.
- Keep learner-facing source in top-level `.qmd` files and `slides/*.qmd`.
- Keep public facilitator assets in `assets/facilitators/` with descriptive filenames.
- Treat `docs/` as rendered GitHub Pages output.
- Keep publication and analysis work under `Publications/`, separate from learner-facing site maintenance.
- Avoid committing local RStudio state, `.RData`, `.Rhistory`, or ad hoc render caches.

## Verification

- Run `quarto check`.
- Run `quarto render`.
- Inspect desktop screenshots of the home page, resources page, and one slide deck.
- Inspect mobile screenshots of the home and resources pages.
- Confirm there is no horizontal overflow on mobile.
- Confirm internal links to slides, resources, PDFs, and references work from the rendered `docs/` folder.
- Confirm no stale cohort-year labels remain in rendered learner-facing pages.
- Confirm the rendered Modules page has exactly four top-level modules.
- Confirm old `slides/resources.html` and `slides/ending.html` links do not 404 and point learners to the consolidated deck.
- Confirm no stale references to "Resources and Escalation" or "Ending and Debriefing" remain as top-level modules.
