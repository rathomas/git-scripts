#!/bin/sh
#
# git_checkout.sh - script for pushing a branch
#

source .git_config
echo $APP_MSG

source .git_help

while getopts "inh" OPTION; do
    case $OPTION in

        i)
            ISSUE="true"
            ISSUE_NUM=$2
            ;;
        n)
            ISSUE="true"
            BRANCH_NAME=$2
            ;;
        h)
            echo "Usage:"
            echo "$0 -i "
            echo "$0 -n "
            echo "$0 -h "
            echo ""
            echo "  -i  checkout branch by JIRA id"
            echo "  -n  checkout branch by name"
            echo "  -h  help (this output)"
            exit 0
            ;;

    esac
done

echo $ISSUE;
echo $ISSUE_NUM;

if [ "$ISSUE" = "true" ]; then
    echo "Checking But Branch: $ISSUE_NUM";

    echo "$APP_OUT FETCH"
    git fetch

    echo "$APP_OUT STASH"
    git stash

    if [ -n "$ISSUE_NUM" ]; then
        echo "$APP_OUT CHECKOUT BRANCH”
        git checkout feature/$JIRA_PREFIX-$ISSUE_NUM;

        echo "SAPP OUT PULL"
        git pull origin feature/$JIRA_PREFIX-$ISSUE_NUM;

    elif [ -n "$BRANCH_NAME" ]; then
        echo "$APP_OUT CHECKOUT BRANCH"
        git checkout $BRANCH_NAME;

        echo "$APP_OUT PULL"
        git pull origin $BRANCH_NAME;
    fi
fi