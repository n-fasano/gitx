#! /bin/sh

help () {
    echo "Usage:"
    echo "ghx cpr <commit-message>"
    echo
    echo "Example:"
    echo "ghx cpr \"Fix bug #531\""
}

MESSAGE="$1"
[ -z "$MESSAGE" ] && help && return

BRANCH="$(git branch --show-current)"
NEW_PR_URL="$(git remote get-url origin | sed "s/\.git/\/pull\/new\/$BRANCH/g")"

git commit -m "$MESSAGE"
git push --set-upstream origin "$BRANCH"
"$GHX_BROWSER" "$NEW_PR_URL"