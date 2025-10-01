# Contributing Guide

Thanks for your interest in improving **U of U IM Codes and Rapid Responses**! We welcome fixes for clarity, accessibility, and accuracy, as well as new references and small content improvements.

## Ways to contribute
- **Typos and clarity:** Fix wording, headings, and formatting in `*.qmd` files.
- **Accessibility:** Add or improve alt‑text for images in `images/`, ensure heading levels are sequential, and use meaningful link text.
- **References:** Add DOIs/PMIDs to `references.bib` and cite with `[@doi:...]` or `[@pmid:...]` in source files.
- **Slides:** Slide decks live under `slides/`. New decks should be authored in Quarto and rendered to HTML (Reveal.js).
- **Issues:** Report problems or propose enhancements at the issue tracker.

## Development workflow
1. **Fork** the repo and create a feature branch.  
2. Make edits to `.qmd` files (or slide sources) and **preview locally**:
   ```bash
   quarto preview
   # or build:
   quarto render
   ```
3. Commit changes with a clear message and open a **Pull Request (PR)** against `main`.
4. A maintainer will review. Please be responsive to feedback.

## Style notes
- Keep section headings short and descriptive; prefer sentence case.
- Keep lines to ~100 characters where feasible.
- Prefer figures as `.png` or `.svg` in `images/` and reference with relative paths.
- Use inclusive, respectful language in all examples and discussions.

## Patient privacy & examples
- **No PHI/PII.** Do not include any protected health information in cases, images, or logs.
- Use **synthetic or de‑identified** clinical details for scenarios.
- Never upload screenshots that include names, MRNs, or dates of birth.

## Licensing of contributions
By contributing, you agree that:
- **Code and configuration** contributions are licensed under the **MIT License** (see `LICENSE`).  
- **Content** (text, slides, images) is licensed under **CC BY‑SA 4.0** (see `LICENSE-Content`).

## Code of Conduct
We follow the Contributor Covenant. By participating, you agree to abide by our [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md).

## Who to contact
- Maintainer: **Brian W. Locke** (GitHub: [@reblocke](https://github.com/reblocke)).
- For questions, please open an issue on GitHub.
