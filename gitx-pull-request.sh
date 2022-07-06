#! /bin/sh

help () {
    echo "Usage:"
    echo "gitx pr"
}

BRANCH="$(git branch --show-current)"
NEW_PR_URL="$(git remote get-url origin | sed "s/\.git/\/pull\/new\/$BRANCH/g")"

"$GITX_BROWSER" "$NEW_PR_URL"