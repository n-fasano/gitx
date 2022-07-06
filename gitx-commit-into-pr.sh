#! /bin/sh

help () {
    echo "Usage:"
    echo "gitx cpr <commit-message>"
    echo
    echo "Example:"
    echo "gitx cpr \"Fix bug #531\""
}

MESSAGE="$1"
[ -z "$MESSAGE" ] && help && return

BRANCH="$(git branch --show-current)"

git commit -m "$MESSAGE"
git push --set-upstream origin "$BRANCH"