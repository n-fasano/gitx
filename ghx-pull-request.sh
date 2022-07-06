#! /bin/sh

help () {
    echo "Usage:"
    echo "ghx pr"
}

echo "Title:"
echo
read TITLE

gh \
    --assignee @me \
    --base main \
    --draft \
    --title "$TITLE"
    --body "$BODY"

"$GHX_BROWSER" "$NEW_PR_URL"