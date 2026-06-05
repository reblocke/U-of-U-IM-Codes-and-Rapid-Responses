# Course Evaluation Data Dictionary

This dictionary documents the schema used for the Code Blue and Rapid Response course
evaluation exports. It is included for transparency and reproducibility planning only.
Raw REDCap exports, survey PDFs, timestamps, trainee-linking identifiers, local
workbooks, and free-text responses are restricted and must not be committed.

The public branch may contain aggregate abstract/poster artifacts and the analysis source
code, but rerunning the evaluation analysis requires a local restricted workbook supplied
outside Git.

## Source Files

Expected local-only inputs for the historical analysis:

- `data/private/arcbt.xlsx`: cleaned local analysis workbook used by
  `Publications/ATS 2026 Abstract/analysis.qmd`.
- REDCap CSV/XLSX/R exports: restricted source exports used to create the local workbook.
- Pre/post survey PDFs: restricted survey instruments and response exports.

## Field Groups

| Group | Variables | Public status |
| --- | --- | --- |
| REDCap metadata | `record_id`, `redcap_survey_identifier`, `*_timestamp`, `*_complete` | Restricted; can identify records or survey completion timing. |
| Linkage fields | `identifier_v2` | Restricted; constructed from last-name initial and phone digits. |
| Pre-course confidence | `pre_con_*`, `pre_nerves_code_v2`, `pre_call_v2` | Restricted row-level responses; aggregate summaries may be public. |
| Prior exposure | `pre_number_codes_v2`, `pre_number_rapids_v2`, `pre_leading_v2`, `pre_sims_v2`, `pre_interpret_v2` | Restricted row-level responses; aggregate summaries may be public. |
| Knowledge/check items | `pre_rhythm_v2`, `pre_resources_v2`, `pre_ptsd_v2___*` | Restricted row-level responses and item-level answers. |
| Post-course confidence | `con_code_post_v2_1ae769`, `con_rapid_post_v2_2b1eb4`, `post_con_shock_2`, `nerves_code_post_v2_38c320`, `post_call_2` | Restricted row-level responses; aggregate summaries may be public. |
| Course feedback | `post_cases_*`, `reminders_post_v2_b080b4___*`, `reminders_free_post_v2_709a86` | Restricted when row-level, especially free text. |
| Derived analysis variables | `change_con_code`, `change_con_rapid`, `change_con_rhythm`, `change_attending`, `change_team` | Derived from restricted row-level responses. |

## Review Notes

- The exact REDCap branching logic, missing-value codes, and complete item wording should
  be verified against the current REDCap data dictionary before any new analysis release.
- Free-text reminders and trainee-linking fields should not appear in public artifacts.
- Small-cell educational evaluation results should be reviewed before public release.

See [`data_dictionary.csv`](./data_dictionary.csv) for machine-readable field metadata.
