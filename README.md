# U of U IM Codes and Rapid Responses

Course website and teaching materials for the **University of Utah Internal Medicine** residency seminar on **Code Blue**, **Rapid Response**, and resident collaboration with nurse-led response teams.

- **Current site:** 2026 learner-facing interdisciplinary update
- **Live website:** <https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>
- **Source repository:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/>
- **2025 archive:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/releases/tag/v2025.06>

## Authors & Affiliations

- **Alex Ryden, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Ethan Krauspe, MD** -- University of Utah Cardiology Fellowship
- **Colton Long, MD** -- University of Utah Internal Medicine Residency
- **Josiah Situmeang, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Sumit Patel, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Richa Sheth, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Alexys Monoson, MD** -- Pulmonary and Critical Care Medicine, University of Utah
- **Brian W. Locke, MD MSCI** -- Pulmonary & Critical Care Medicine, Intermountain Medical Center

## Teaching Module At A Glance

- **Audience:** Rising PGY-2 residents who will lead Code Blue and Rapid Response teams.
- **Learning objectives:** Assume and communicate leadership; identify VF/VT and defibrillate when indicated; work productively with bedside nurses, nurse-led response teams, and critical care outreach nurses; escalate care and marshal resources; conclude, hand off, and debrief.
- **Format:** Learner-facing website, short micro-skill slide modules, in-person simulation scenarios, and facilitator notes for interprofessional co-teaching.

## Quick Start

To use the modules, go to the live website:

<https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>

The commands below are only needed for local development, branch previews, or checking changes before publishing.

Prerequisite: [Quarto](https://quarto.org/docs/get-started/) installed.

```bash
quarto preview
quarto render
```

The site is configured as a Quarto website and publishes from `docs/` for GitHub Pages.

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
├── assets/              # manuals, facilitator files, and other assets copied into docs/
├── images/              # learner-facing source images
├── Publications/        # analysis/archive material, not learner-facing site content
└── docs/                # rendered website served by GitHub Pages
```

## Releases And Citation

Please cite the website/software using [`CITATION.cff`](./CITATION.cff). The 2025 class version is preserved as the [`v2025.06` GitHub release](https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/releases/tag/v2025.06).

Related course-evaluation outputs are listed on the [References](./references.qmd) page, including the citable 2025 ATS abstract and the 2026 ATS poster.

## Contributing

Bug fixes, typo corrections, accessibility improvements, updated references, and site-specific workflow clarifications are welcome via pull request. See [`CONTRIBUTING.md`](./CONTRIBUTING.md) and [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md).

## License

- **Code** in this repository is licensed under the **MIT License** (see [`LICENSE`](./LICENSE)).
- **Content** including text, slides, and images unless otherwise noted is licensed under **CC BY-SA 4.0** (see [`LICENSE-Content`](./LICENSE-Content)).

## Medical Disclaimer

These educational materials are for training only and are **not** medical advice. Follow your institution's policies, equipment, and resuscitation guidelines. In an emergency, call your local code/rapid response number immediately.

## LLM and Repository Readiness Notes

### Description
Code blue and rapid-response team leadership course site

### Instructions
Start with this README, then inspect the files listed under Repository Layout. For computational workflows, run commands from the repository root and avoid committing generated outputs unless a release explicitly calls for them.

### Authors, Funding, and Acknowledgments
Maintainer: Brian W. Locke (`@reblocke`, ORCID 0000-0002-3588-5238). Preserve any project-specific author, funding, and acknowledgment details already listed elsewhere in the repository or accompanying publication.

### Repository Layout
- `CITATION.cff`
- `CODE_OF_CONDUCT.md`
- `CONTRIBUTING.md`
- `LICENSE`
- `LICENSE-Content`
- `MAINTENANCE.md`
- `Publications/README.md`
- `README.md`
- `SECURITY.md`
- `U of U IM Codes and Rapid Responses.Rproj`
- `_quarto.yml`
- `cover.png`
- `docs/facilitators.html`
- `docs/index.html`

### Data and Codebook
Educational data/materials; verify no trainee identifiers

### Workflow / Script Order
Quarto/site build workflow

### Dependencies / Environment
Repo README and lockfiles

### Citation
No publication DOI is assigned to this repository. Cite the GitHub repository URL and the commit or release used.

### License
Repository license status: MIT. See the root license file when present. Third-party and publisher materials remain under their original terms.

### Manuscript Status
No manuscript version expected Teaching text owned where authored; check third-party images

### Contact
Maintainer: Brian W. Locke (`@reblocke`). Use GitHub issues or pull requests for repository-specific questions when the repository is public.
