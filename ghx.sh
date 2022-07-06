#! /bin/sh

help () {
    echo \
"   _____ _ _        
  / ____(_) |       
 | |  __ _| |___  __
 | | |_ | | __\ \/ /
 | |__| | | |_ >  < 
  \_____|_|\__/_/\_\             


Usage:
ghx cp <commit-message>
ghx cpr <commit-message>"
}

GHX_SCRIPTS="$(dirname "${BASH_SOURCE[0]}")"
source "$GHX_SCRIPTS/config.sh"

COMMAND="$1"
shift

case "$COMMAND" in
    cp)
        . "$GHX_SCRIPTS/ghx-commit-and-push.sh" "$1"
    ;;

    cpr)
        . "$GHX_SCRIPTS/ghx-commit-into-pull-request.sh" "$1"
    ;;

    pr)
        . "$GHX_SCRIPTS/ghx-pull-request.sh" "$1"
    ;;

    *)
        help
    ;;
esac