# U of U IM Codes and Rapid Responses

> Course website & materials for the **University of Utah Internal Medicine** residency seminar on **Code Blue** and **Rapid Response** team leadership (v1.0 delivered May–June 2025).

**Links & IDs**  
- Live website: <https://reblocke.github.io/U-of-U-IM-Codes-and-Rapid-Responses/>  
- Source repository: <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/>  
- First published: **May 3, 2025** · Last updated: **June 18, 2025**

## Authors & affiliations
- **Alex Ryden, MD** — University of Utah Pulmonary and Critical Care Medicine Fellowship  
- **Ethan Krauspe, MD** — University of Utah Internal Medicine Chief Medical Residents  
- **Colton Long, MD** — University of Utah Internal Medicine Residency  
- **Josiah Situmeang, MD** — University of Utah Internal Medicine Chief Medical Residents  
- **Sumit Patel, MD** — University of Utah Pulmonary and Critical Care Medicine Fellowship  
- **Richa Sheth, MD** — University of Utah Pulmonary and Critical Care Medicine Fellowship  
- **Brian W. Locke, MD MSCI** — Pulmonary & Critical Care Medicine, Intermountain Medical Center

## Cite this work
Please cite the software/website using the metadata in [`CITATION.cff`](./CITATION.cff).  
_When a conference abstract or journal article becomes available, add its DOI to `CITATION.cff` under `preferred-citation` and to the “Links & IDs” list above._

## Quick start (local build)
Prerequisites: [Quarto](https://quarto.org/docs/get-started/) installed.

```bash
# 1) Clone the repository
git clone https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses.git
cd U-of-U-IM-Codes-and-Rapid-Responses

# 2) Preview the site locally (auto-reloads on save)
quarto preview

# 3) Render the site
quarto render
```

The site is configured to publish from the `docs/` folder (GitHub Pages). See the Quarto guide on [publishing to GitHub Pages](https://quarto.org/docs/publishing/github-pages.html).

## Repository layout
```
├── _quarto.yml          # site configuration (output-dir: docs)
├── index.qmd            # overview / landing page
├── summary.qmd          # summary & resources page
├── references.qmd       # references page
├── references.bib       # bibliography (citations/DOIs)
├── slides/              # HTML slide decks (leadership, pulse-check, resources, ending)
├── images/              # figures and images (e.g., cover.png)
├── docs/                # rendered website (published by GitHub Pages)
└── .gitignore
```

## Teaching module at a glance
- **Audience:** Rising PGY‑2 residents who will lead Code Blue and Rapid Response teams.  
- **Learning objectives:** Assume & communicate leadership; identify VF/VT and defibrillate when indicated; escalate care and marshal resources; operate the Zoll R‑Series defibrillator; conclude and debrief.  
- **Format:** Brief micro‑skills with slide decks, followed by hands‑on scenarios (in person).

## Contributing
Bug fixes, typo corrections, accessibility improvements (alt‑text, headings), new references, and small clarifications are welcome via Pull Request.  
Please see [`CONTRIBUTING.md`](./CONTRIBUTING.md) and our [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md).

## License
- **Code** (this repository’s scripts and configuration): **MIT License** (see [`LICENSE`](./LICENSE)).  
- **Content** (text, slides, and images unless noted otherwise): **CC BY‑SA 4.0** (see [`LICENSE-Content`](./LICENSE-Content)).  
  - If you reuse or adapt the teaching content, attribute the authors and share adaptations under the same license (BY‑SA).

## Maintainers / contact
- Maintainer: **Brian W. Locke** (GitHub: [@reblocke](https://github.com/reblocke))  
- Issues: <https://github.com/reblocke/U-of-U-IM-Codes-and-Rapid-Responses/issues>

## Medical disclaimer
These educational materials are for training only and are **not** medical advice. Follow your institution’s policies, equipment, and resuscitation guidelines. In an emergency, call your local code/rapid response number immediately.
