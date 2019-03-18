#!/bin/sh
#
# git_remove.sh - script for deleting a branch
#

source .git_config
echo $APP_MSG

source .git_help

while getopts "ih" OPTION; do
    case $OPTION in

        i)
            ISSUE="true"
            ISSUE_NUM=$2
            ;;
        h)
            echo "Usage:"
            echo "$0 -i "
            echo "$0 -h "
            echo ""
            echo "  -i  to execute remove branch"
            echo "  -h  help (this output)"
            exit 0
            ;;

    esac
done

echo $ISSUE;
echo $ISSUE_NUM;

if [ "$ISSUE" = "true" ]; then
    echo "Deleting Branch: $ISSUE_NUM"

    echo "$APP_OUI DELETE REMOTE"
    git push --delete origin feature/$JIRA_PREFIX-$ISSUE_NUM 2>&1

    echo "$APP_OUT DELETE LOCAL"
    git branch -d feature/$JIRA_PREFIX-$ISSUE_NUM 2>&1
fi