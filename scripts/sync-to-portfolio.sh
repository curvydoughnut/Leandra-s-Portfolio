#!/bin/bash
# Mirrors the active workspace ("Interactive portfolio presentation slides/")
# into the clean Netlify deploy folder ("portfolio/"). Run before every push
# so portfolio/ always reflects the latest workspace edits.
set -euo pipefail

cd "$(dirname "$0")/.."

rsync -a --delete \
  --exclude '.netlify' \
  --exclude '.thumbnail' \
  "Interactive portfolio presentation slides/" \
  "portfolio/"

echo "Synced 'Interactive portfolio presentation slides/' -> 'portfolio/'"
