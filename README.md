# U of U IM Codes and Rapid Responses

[![Course site](https://img.shields.io/badge/course_site-GitHub_Pages-blue)](https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/)
[![Code license: MIT](https://img.shields.io/badge/code-MIT-green)](./LICENSE)
[![Content license: CC BY-SA 4.0](https://img.shields.io/badge/content-CC_BY--SA_4.0-green)](./LICENSE-Content)

Course website and teaching materials for the **University of Utah Internal Medicine**
residency seminar on **Code Blue**, **Rapid Response**, and resident collaboration
with bedside nurses, nurse-led response teams, and critical care outreach teams.

- **Current site:** 2026 learner-facing interdisciplinary update
- **Live website:** <https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>
- **Source repository:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/>
- **2025 archive:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/releases/tag/v2025.06>
- **Machine-readable index:** [`llms.txt`](./llms.txt)

## Authors And Affiliations

- **Alex Ryden, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Ethan Krauspe, MD** -- University of Utah Cardiology Fellowship
- **Colton Long, MD** -- University of Utah Internal Medicine Residency
- **Josiah Situmeang, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Sumit Patel, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Richa Sheth, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Alexys Monoson, MD** -- Pulmonary and Critical Care Medicine, University of Utah
- **Brian W. Locke, MD MSCI** -- Pulmonary and Critical Care Medicine,
  Intermountain Medical Center; ORCID
  [0000-0002-3588-5238](https://orcid.org/0000-0002-3588-5238)

Funding and conflict-of-interest statements are not separately reported for this
course repository unless listed in a specific abstract or poster record.

## Teaching Module At A Glance

- **Audience:** Rising PGY-2 residents who will lead Code Blue and Rapid Response teams.
- **Objectives:** Make leadership explicit, prepare pulse checks, protect compression
  pauses, identify shockable rhythms, work with bedside and outreach expertise,
  escalate resources, close the event, hand off, and debrief.
- **Format:** Learner-facing website, short micro-skill slide modules, in-person
  simulation scenarios, and facilitator notes for interprofessional co-teaching.
- **Modules:** Leadership skills; pulse-check decisions; nurse response teams and
  escalation; ending Code Blue considerations.

## Quick Start

To use the modules, go to the live website:

<https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>

The commands below are only needed for local development, branch previews, or checking
changes before publishing.

Prerequisite: [Quarto](https://quarto.org/docs/get-started/) installed.

```bash
quarto check
quarto render
quarto preview
```

The site is configured as a Quarto website and publishes from `docs/` for GitHub Pages.
Edit source `.qmd` files and slide sources, then render `docs/`; do not hand-edit
rendered HTML unless diagnosing a render issue.

## Repository Layout

```text
├── _quarto.yml          # Quarto website configuration
├── index.qmd            # learner hub / landing page
├── modules.qmd          # module index
├── scenarios.qmd        # scenario index
├── resources.qmd        # learner resources
├── facilitators.qmd     # instructor links and setup notes
├── references.qmd       # bibliography and external resources
├── slides/              # slide sources; render to docs/slides/
├── assets/              # manuals, facilitator files, and copied site assets
├── images/              # learner-facing source images
├── Publications/        # abstract/archive material, not raw survey exports
├── data_dictionary.*    # evaluation-data schema and privacy notes
└── docs/                # rendered website served by GitHub Pages
```

## Course Evaluation Outputs

This repository supports a course website and abstract/poster outputs, not a journal
manuscript. Cite the website/software through [`CITATION.cff`](./CITATION.cff) and cite
course-evaluation abstracts directly when using their findings:

- Ryden AG, Krauspe E, Patel S, Wayne R, Davis M, Locke BW. **Enhancing Intern
  Leadership of Inpatient Emergencies: Evaluating the Impact of a Seminar Addressing
  Team Dynamics.** American Journal of Respiratory and Critical Care Medicine.
  2025;211(Supplement_1):A5624. DOI
  [10.1164/ajrccm.2025.211.abstracts.a5624](https://doi.org/10.1164/ajrccm.2025.211.abstracts.a5624).
- Situmeang J, Ryden A, Long CW, Krauspe E, Patel S, Sheth R, Locke BW.
  **B38-12 Intern Code Blue and Rapid Response Leadership: A Pre-post Evaluation of
  a Micro-Module Curriculum.** American Journal of Respiratory and Critical Care
  Medicine. 2026;212(Supplement_1):aamag162.939. DOI
  [10.1093/ajrccm/aamag162.939](https://doi.org/10.1093/ajrccm/aamag162.939);
  [Oxford Academic page](https://academic.oup.com/ajrccm/article/212/Supplement_1/aamag162.939/8680845).

The final 2026 poster PDF is kept as an author-owned public artifact in
`Publications/ATS 2026 Abstract/`. Raw trainee-level survey exports, draft files, and
generated analysis renders are not part of the public branch.

## Data And Privacy Boundaries

Learner-facing teaching materials are public. Course-evaluation source data are
restricted because they can include trainee-linking fields, timestamps, REDCap export
metadata, and free-text responses. Do not commit raw REDCap exports, survey PDFs,
spreadsheets, R exports, local analysis data, or participant-level outputs.

The public data dictionary documents expected fields and the privacy status of the
evaluation dataset without sharing row-level data. Re-running the publication analysis
requires a local restricted workbook supplied outside Git.

## Contributing

Bug fixes, typo corrections, accessibility improvements, updated references, and
site-specific workflow clarifications are welcome via pull request. See
[`CONTRIBUTING.md`](./CONTRIBUTING.md) and [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md).

Before publishing changes, run `quarto render`, inspect the rendered site, and confirm
that `docs/llms.txt`, `docs/search.json`, and `docs/sitemap.xml` are present.

## License

- **Code** in this repository is licensed under the **MIT License** (see
  [`LICENSE`](./LICENSE)).
- **Content** including text, slides, and images unless otherwise noted is licensed
  under **CC BY-SA 4.0** (see [`LICENSE-Content`](./LICENSE-Content)).
- Third-party clinical guidelines, journal articles, institutional manuals, and
  externally sourced images remain under their original licenses and should be linked
  or cited rather than copied unless redistribution rights are clear.

## Medical Disclaimer

These educational materials are for training only and are **not** medical advice.
Follow your institution's policies, equipment, and resuscitation guidelines. In an
emergency, call your local Code Blue or Rapid Response number immediately.

## Contact

Maintainer: **Brian W. Locke** (GitHub:
[`@reblocke`](https://github.com/reblocke)). Use GitHub issues or pull requests for
repository-specific questions.
