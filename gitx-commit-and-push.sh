#! /bin/sh

help () {
    echo "Usage:"
    echo "gitx cp <commit-message>"
    echo
    echo "Example:"
    echo "gitx cp \"Fix bug #531\""
}

MESSAGE="$1"
[ -z "$MESSAGE" ] && help && return

git commit -m "$MESSAGE"
git push