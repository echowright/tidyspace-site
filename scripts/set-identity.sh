#!/bin/sh
# Replaces the publisher placeholders in every page and listing file, then checks none is left.
# Usage: scripts/set-identity.sh "Publisher name" "Postal address, City, Country" "contact@example.com"
set -eu
[ $# -eq 3 ] || { echo 'Usage: scripts/set-identity.sh "Publisher name" "Postal address" "contact email"' >&2; exit 2; }
cd "$(dirname "$0")/.."
esc() { printf '%s' "$1" | sed -e 's/[\/&|]/\\&/g'; }
name=$(esc "$1"); address=$(esc "$2"); email=$(esc "$3")
for f in *.html marketplace/*.md; do
  sed -i -e "s|__PUBLISHER_NAME__|$name|g" -e "s|__PUBLISHER_ADDRESS__|$address|g" -e "s|__CONTACT_EMAIL__|$email|g" "$f"
done
exec scripts/check.sh
