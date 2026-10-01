# Tidyspace website

Public website of **Tidyspace**, an app for Confluence Cloud: product page, user documentation,
support, security, privacy policy and terms of use. Served by GitHub Pages from the `main`
branch, at the root of the repository. The app's source code is in a separate, private
repository.

Plain static HTML and one stylesheet: no build step, no script, no cookie, no analytics.

| Path | Content |
|---|---|
| `index.html` | product page |
| `docs.html` | user documentation |
| `support.html`, `security.html`, `privacy.html`, `terms.html` | support, security (vulnerability and incident policy), privacy policy, terms of use |
| `assets/site.css` | styles (light and dark) |
| `assets/img/logo.svg` | app logo (source) |
| `assets/img/screens/` | plain screenshots used by the documentation |
| `assets/img/listing/` | Marketplace assets: annotated screenshots (1840×900), cropped highlights (580×330), banner (1120×548), logo (144×144) |
| `marketplace/listing.md` | text of the Marketplace listing, field by field, with the Privacy & Security answers and the reviewer notes |
| `scripts/` | `set-identity.sh` (fill in the publisher), `check.sh` (placeholders, local links and anchors), `check-listing.py` (lengths of the listing fields) |

## Before publishing

The publisher's name, postal address and contact email are placeholders (`__PUBLISHER_NAME__`,
`__PUBLISHER_ADDRESS__`, `__CONTACT_EMAIL__`). Fill them in, which also runs the checks:

```sh
scripts/set-identity.sh "Publisher name" "Street, Postcode City, Country" "support@example.com"
scripts/check-listing.py
```

## Screenshots

The images of `assets/img/screens/` and `assets/img/listing/` are generated from the app's local
preview (fictitious demo data), by the screenshot script of the app repository:

```sh
npm run preview:ui && node test/ui/marketplace.mjs <path to this repository>/assets/img
```

## Publishing on GitHub Pages

Repository settings > Pages > Build and deployment: Source **Deploy from a branch**, branch
`main`, folder `/ (root)`. `.nojekyll` disables Jekyll: files are served as they are.
