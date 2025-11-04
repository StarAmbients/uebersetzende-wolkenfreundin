#!/usr/bin/env bash
set -euo pipefail
DATE=$(date +%F)
BRANCH="eod/${DATE}"

git checkout -b "$BRANCH" 2>/dev/null || git checkout "$BRANCH"

git add -A
if git diff --cached --quiet; then
  echo "Nothing to commit for $DATE"; exit 0; fi

git commit -m "docs: end-of-day progress ${DATE}"
git push -u origin "$BRANCH"

echo "Open a PR titled: EOD ${DATE}"
