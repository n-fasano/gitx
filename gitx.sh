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
gitx cp <commit-message>
gitx pr <commit-message>
gitx cpr <commit-message>"
}

GITX_SCRIPTS="$(dirname "${BASH_SOURCE[0]}")"
source "$GITX_SCRIPTS/config.sh"

COMMAND="$1"
shift

case "$COMMAND" in
    cp)
        . "$GITX_SCRIPTS/gitx-commit-and-push.sh" $@
    ;;

    pr)
        . "$GITX_SCRIPTS/gitx-pull-request.sh" $@
    ;;

    cpr)
        . "$GITX_SCRIPTS/gitx-commit-into-pull-request.sh" $@
    ;;

    *)
        help
    ;;
esac