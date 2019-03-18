#!/bin/sh
#
# git_branch.sh - script for pushing a branch
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
            echo "  -i  to execute crete branch"
            echo "  -h  help (this output)"
            exit 0
            ;;

    esac
done

echo $ISSUE;
echo $ISSUE_NUM;

if [ "$ISSUE" = "true" ]; then
    echo "Creating Branch: $ISSUE_NUM";

    echo "$APP_OUT FETCH"
    git fetch;

    echo "$APP_OUT CHECKOUI"
    git checkout $SPRINT_WORKING_BRANCH;

    echo "$APP_OUT PULL"
    git pull origin $SPRINT_WORKING_BRANCH;

    echo "$APP_OUT CREATE BRANCH AND SELECT"
    git checkout -b feature/$JIRA_PREFIX-$ISSUE_NUM;

fi