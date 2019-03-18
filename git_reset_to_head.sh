#!/bin/sh
#
# git_reset_to_head.sh - script for pushing a branch
#

source .git_config
echo $APP_MSG

source .git_help

while getopts "bh" OPTION; do
    case $OPTION in

        b)
            BRANCH="true"
            BRANCH_NAME=$2
            ;;
        h)
            echo "Usage:"
            echo "$0 -b "
            echo "$0 -h "
            echo ""
            echo "  -b  branch to push"
            echo "  -h  help (this output)"
            exit 0
            ;;

    esac
done

if [ "$BRANCH" = "true" ]; then
    echo "Resetting Branch: $BRANCH_NAME";
    git reset --hard HEAD

    echo "Removing Untracked files from Branch: $BRANCH_NAME";
    git clean -f -d
fi