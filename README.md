# U of U IM Codes and Rapid Responses

Course website and teaching materials for the **University of Utah Internal Medicine** residency seminar on **Code Blue** and **Rapid Response** team leadership.

- **Current site:** 2026 learner-facing update
- **Live website:** <https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>
- **Source repository:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/>
- **2025 archive:** <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/releases/tag/v2025.06>

## Authors & Affiliations

- **Alex Ryden, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Ethan Krauspe, MD** -- University of Utah Internal Medicine Chief Medical Residents
- **Colton Long, MD** -- University of Utah Internal Medicine Residency
- **Josiah Situmeang, MD** -- University of Utah Internal Medicine Chief Medical Residents
- **Sumit Patel, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Richa Sheth, MD** -- University of Utah Pulmonary and Critical Care Medicine Fellowship
- **Brian W. Locke, MD MSCI** -- Pulmonary & Critical Care Medicine, Intermountain Medical Center

## Teaching Module At A Glance

- **Audience:** Rising PGY-2 residents who will lead Code Blue and Rapid Response teams.
- **Learning objectives:** Assume and communicate leadership; identify VF/VT and defibrillate when indicated; escalate care and marshal resources; operate the Zoll R-Series defibrillator; conclude and debrief.
- **Format:** Learner-facing website, short micro-skill slide modules, and in-person simulation scenarios.

## Quick Start

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

## Contributing

Bug fixes, typo corrections, accessibility improvements, updated references, and site-specific workflow clarifications are welcome via pull request. See [`CONTRIBUTING.md`](./CONTRIBUTING.md) and [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md).

## License

- **Code** in this repository is licensed under the **MIT License** (see [`LICENSE`](./LICENSE)).
- **Content** including text, slides, and images unless otherwise noted is licensed under **CC BY-SA 4.0** (see [`LICENSE-Content`](./LICENSE-Content)).

## Medical Disclaimer

These educational materials are for training only and are **not** medical advice. Follow your institution's policies, equipment, and resuscitation guidelines. In an emergency, call your local code/rapid response number immediately.
