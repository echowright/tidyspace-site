#!/bin/sh
# Checks the site before publishing: no placeholder left, every local link and image exists.
# Usage: scripts/check.sh
set -u
cd "$(dirname "$0")/.."
status=0
if grep -rn '__[A-Z_]*__' --include='*.html' --include='*.md' --exclude=README.md --exclude-dir=.git .; then
  echo 'Placeholders left: run scripts/set-identity.sh' >&2; status=1
fi
for f in *.html; do
  for ref in $(grep -o -E '(href|src)="[^"#]+' "$f" | sed -E 's/^(href|src)="//' | grep -v ':' | sort -u); do
    [ -e "$ref" ] || { echo "$f: missing $ref" >&2; status=1; }
  done
  for anchor in $(grep -o -E 'href="#[^"]+' "$f" | sed 's/^href="#//' | sort -u); do
    grep -q "id=\"$anchor\"" "$f" || { echo "$f: missing anchor #$anchor" >&2; status=1; }
  done
  for link in $(grep -o -E 'href="[a-z]+\.html#[^"]+' "$f" | sed 's/^href="//' | sort -u); do
    page=${link%%#*}; anchor=${link#*#}
    grep -q "id=\"$anchor\"" "$page" || { echo "$f: missing anchor $link" >&2; status=1; }
  done
done
[ $status -eq 0 ] && echo 'Site OK'
exit $status
