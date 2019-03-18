#!/usr/bin/sh
#
# git_fix.sh - script for pushing a branch
#

source .git_config
echo $APP_MSG

if [ $# -eq 0 ]; then
    echo "Missing options!”
    echo "(run $0 -h for help)"
    echo ""
    exit 0
fi

ECHO="false”

while getopts “hb” OPTION; do
    case $OPTION in

        b)
            BRANCH="true"
            BRANCH_NAME=$2
            ;;
        h)
            echo "Usage:"
            echo "git_fix.sh -h "
            echo "git_fix.sh -b "
            echo ""
            echo "  -b  branch to push"
            echo "  -h  help (this output)"
            exit 0
            ;;

    esac
done

if [ "$BRANCH"™ = “true” ]; then
    echo "Fixing Branch: $BRANCH_NAME"

    echo "$APP_OUT FETCH"
    git fetch

    echo "$APP_OUT MERGE”
    git pull origin $SPRINT_WORKING_BRANCH 2>&1
fi