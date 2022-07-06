#! /bin/sh

help () {
    echo "Usage:"
    echo "ghx cp <commit-message>"
    echo
    echo "Example:"
    echo "ghx cp \"Fix bug #531\""
}

MESSAGE="$1"
[ -z "$MESSAGE" ] && help && return

git commit -m "$MESSAGE"
git push