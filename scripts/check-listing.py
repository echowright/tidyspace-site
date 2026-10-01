#!/usr/bin/env python3
"""Checks the lengths of the Marketplace listing fields in marketplace/listing.md."""
import re
import sys
from pathlib import Path

text = Path(__file__).resolve().parent.parent.joinpath('marketplace/listing.md').read_text()
errors = 0
# Fenced blocks preceded by "**Field** (N max)".
for name, limit, body in re.findall(r'\*\*([^*]+)\*\* \([^)]*?(\d+) max\)\n\n```\n(.*?)\n```', text, re.S):
    n = len(body)
    print(f'{n:5}/{limit:<5} {name}')
    errors += n > int(limit)
# Inline fields "- **Field** (N max): `value`".
for name, limit, body in re.findall(r'- \*\*([^*]+)\*\* \((\d+) max\): `([^`]*)`', text):
    n = len(body)
    print(f'{n:5}/{limit:<5} {name}')
    errors += n > int(limit)
sys.exit(1 if errors else 0)
