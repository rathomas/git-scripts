#!/usr/bin/sh
a

# git_branch.sh - script for creating a new branch

+

source .git_config
echo $APP_MSG

if [ $# -eq 0 ]; then

    echo "Missing options!”
    echo "(run $0 -h for help)”

    echo ""
    exit 0
fi
ECHO="false”

PRB Ms Sete) jt A ERO) 2B KOC

case SOPTION in

i)

ISSUE="true”
ISSUE_NUM=§2

h)
echo
echo
echo
echo
echo
echo
exit

esac
done

echo $ISSUE;
Celso S TL MLL

"Usage:”
"git_branch.sh -h
"git_branch.sh -e

= to execute create branch”
" cet help (this output)”
it}

if [ “$ISSUE" = “true” ]; then
echo "Creating Branch: $ISSUE_NUM";

echo "SAPP OUI FETCH"
git fetch

echo "SAPP OUI CHECKOUI”

git checkout $SPRINT_WORKING BRANCH;

echo "SAPP OUT PULL”
git pull origin develop;

echo "SAPP OUT CREATE BRANCH AND SELECT”
git checkout -b feature/ELSOL-$ISSUE_NUM;

vai
