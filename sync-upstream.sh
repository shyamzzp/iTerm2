#!/usr/bin/env bash
# Sync this fork (shyamzzp/iTerm2) with the original iTerm2 (gnachman/iTerm2).
#
#   origin   -> https://github.com/shyamzzp/iTerm2.git   (your fork)
#   upstream -> https://github.com/gnachman/iTerm2.git    (original, fetch-only)
#
# Usage:
#   ./sync-upstream.sh            # update master from upstream and push to your fork
#
set -euo pipefail

echo ">> Fetching upstream iTerm2..."
git fetch upstream

echo ">> Updating local master from upstream/master..."
git checkout master
git merge --ff-only upstream/master

echo ">> Pushing updated master to your fork (origin)..."
git push origin master

echo ">> Done. To bring upstream changes into your feature branch:"
echo "     git checkout shyamzzp-features && git merge master   # or: git rebase master"
