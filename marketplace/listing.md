# Tidyspace: Marketplace listing

Text and assets to paste into the Atlassian Marketplace listing form, field by field. Limits are
those of the Marketplace guidelines ("Building your presence on Marketplace", read on 2026-10-01);
`scripts/check-listing.py` checks the lengths. Images are in `assets/img/listing/`.

## App details

**App name** (60 max)

```
Tidyspace: bulk labels, watchers & restrictions
```

**Tagline** (130 max)

```
Bulk-edit labels, watchers and page restrictions across Confluence, with a preview before anything changes and a full journal.
```

**Summary** (legacy field, 250 max)

```
Rename a label across the whole site, clean up watchers, grant or remove page access in one job. Every job starts with an exact preview, runs in resumable batches and leaves a journal you can export as CSV. For Confluence administrators.
```

**More details** (1000 max)

```
Tidyspace gives Confluence administrators the bulk actions Confluence does not have.

Labels: add, remove or replace a label on a selection, or rename and merge a label everywhere it is used.
Watchers: add or remove up to 10 people, or remove deactivated accounts from watcher lists.
Restrictions: grant "Can view" or "Can edit", or remove access, for up to 10 users and groups, with the access before and after on each page.

Select content in a space and page tree, filter by type, label or last modified date, or use CQL. The preview shows the exact number of items and every item left out, with the reason. Nothing is written until you confirm.

Tidyspace never acts beyond your own access: content you cannot view or edit is excluded. Jobs of up to 20,000 items run in batches, pause on API limits, can be cancelled and resume after an interruption.

Built on Atlassian Forge: no external server, no data leaves Atlassian. In English and French.
```

## Highlights (exactly 3)

### Highlight 1

- **Title** (50 max): `Rename a label everywhere, in one job`
- **Summary** (220 max): `Replace or merge a label across the whole site, add or remove labels on any selection of pages and blog posts, and clean up watchers, including deactivated accounts. One job instead of hundreds of edits.`
- **Screenshot** (1840×900): `assets/img/listing/preview-annotated.png`
- **Cropped screenshot** (580×330): `assets/img/listing/highlight-preview-580x330.png`
- **Caption** (220 max): `The preview of a site-wide label rename: 248 items to process, nothing written yet, and every item left out with the reason.`
- **Additional screenshots**: `select-annotated.png` (caption: `Select spaces, pages and folders in a tree, refine by type, label or last modified date, or write a CQL query.`)

### Highlight 2

- **Title** (50 max): `Grant or remove page access in bulk`
- **Summary** (220 max): `Give "Can view" or "Can edit" access, or remove it, for up to 10 users and groups at once. See the access before and after on each page. A removal that would lock people out is refused.`
- **Screenshot** (1840×900): `assets/img/listing/restrictions-annotated.png`
- **Cropped screenshot** (580×330): `assets/img/listing/highlight-restrictions-580x330.png`
- **Caption** (220 max): `Restrictions preview: the access on each page before and after the job, with items already done skipped.`

### Highlight 3

- **Title** (50 max): `Preview, run, verify: every item accounted for`
- **Summary** (220 max): `Nothing changes before you confirm. Jobs run in batches, pause on API limits, resume after an interruption, and record the result of every item in a journal you can export as CSV.`
- **Screenshot** (1840×900): `assets/img/listing/verify-annotated.png`
- **Cropped screenshot** (580×330): `assets/img/listing/highlight-verify-580x330.png`
- **Caption** (220 max): `A finished job: succeeded and failed items with their reason, and the journal export.`
- **Additional screenshots**: `history-annotated.png` (caption: `Job history: every bulk change on the site, and Re-run to prepare a fresh preview.`)

## Media

| Asset | File |
|---|---|
| App logo, 144×144 PNG | `assets/img/listing/logo-144.png` (vector source: `assets/img/logo.svg`) |
| App banner, 1120×548 PNG | `assets/img/listing/banner-1120x548.png` |
| Video (optional, YouTube) | none for now |

## Classification

- **Category** (suggested): Admin tools; secondary: Content management (choose what the form offers).
- **Keywords**: bulk, labels, watchers, restrictions, permissions, cleanup, admin, rename label.
- **Hosting**: Cloud; Atlassian app: Confluence.

## Links

Base URL once GitHub Pages is enabled: `https://corentinregnier.github.io/tidyspace-site/`

| Field | URL |
|---|---|
| Documentation | `…/docs.html` |
| Support (partner support or issue tracker) | `…/support.html` |
| Privacy policy | `…/privacy.html` |
| End user licence agreement (terms of use) | `…/terms.html` |
| Security (partner profile, trust information) | `…/security.html` |
| App website | `…/` |

## Release information (first version)

- **Release summary** (80 max): `First release: bulk labels, watchers and restrictions with preview and journal.`
- **Release notes** (1000 max): `First public release of Tidyspace for Confluence Cloud. Bulk labels (add, remove, replace, site-wide rename), watchers (add, remove, remove deactivated accounts) and restrictions (grant Can view or Can edit, remove access) on up to 20,000 pages and blog posts per job. Exact preview before any change, access checked item by item, resumable batches, CSV journal. English and French.`

## Privacy & Security tab (draft answers)

Answers to prepare for the "Privacy & Security" tab of the listing. Check each one against the
questions of the form at the time of submission.

| Topic | Answer |
|---|---|
| Does the app store or process End User Data outside Atlassian? | No. Runs on Atlassian: Forge functions and Forge hosted storage only, no egress, no remote back end. |
| Where is data stored? | Forge hosted storage (Key-Value Store), scoped to the installation, encrypted at rest, data residency inherited from Confluence. |
| What End User Data is stored? | Identifiers, titles, types and space keys of the selected content; account IDs and display names of the users chosen; group IDs and names; account ID of the administrator who prepared or started the job; per-item results. No page body, no email address, no credentials. |
| Retention | 90 days after the job's last activity (time to live on every key); closed accounts erased within 7 days; deleted by Atlassian 28 days after uninstallation. |
| Does the app share data with third parties? | No. |
| Logging | Forge logs: function, error type, error code, HTTP status; no titles, queries or response bodies. Custom metrics are counters without personal data. |
| Data residency support | Yes, inherited from Forge hosted storage (check the form's wording: "PINNED" requires the app to meet Forge's conditions). |
| Does the app use the personal data reporting API? | Yes. A daily scheduled trigger reports every 7 days the account IDs stored in jobs, with their retrieval date; closed accounts are erased from every job (a job not yet run is stopped), updated display names are read again or erased. |
| Authentication | Forge platform only; the app never handles passwords or tokens. |
| Security contact, vulnerability and incident process | `security.html`. |
| Compliance certifications | None of its own; relies on Atlassian's platform certifications (Runs on Atlassian). |

## Notes for the Atlassian reviewer

Paste into the "notes for reviewers" field if the form has one, or into the submission ticket.

```
Tidyspace is a Forge app (Custom UI page in Confluence global settings, async events consumer,
Forge KVS). It is reserved to Confluence administrators: please test with an account that has the
Confluence administrator permission. Open Confluence administration (gear icon) > Apps > Tidyspace.
Suggested test: Labels > Add a label "review-test" on one space, Prepare the preview, Run, then
check the journal and export it. Restrictions and watchers can be tested the same way on a test
page. A job changes content immediately after confirmation; use a test space.
Documentation: https://corentinregnier.github.io/tidyspace-site/docs.html
```
