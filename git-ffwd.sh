#!/bin/bash

# TODO:
# - automatically stash when there are uncommitted changes
# - only print updated branches info

CHANGES=$(git status --porcelain)
if [ "$CHANGES" != "" ]; then
    echo "Uncommitted changes detected! Stash or commit your changes & then run the command again.";
    exit 1
fi

PREV_BRANCH=$(git branch --show-current)
git fetch --all
git branch -r | grep -v '\->' | while read remote; do git checkout "${remote#origin/}"; git merge "$remote" || true; done 2>/dev/null
git checkout $PREV_BRANCH
echo "Done!"

