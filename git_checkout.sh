#!/bin/sh

while getopts "hin" OPTION; do
case $OPTION in

i)
ISSUE="true”
ISSUE_NUM=§2
n)
ISSUE="true”
BRANCH_NAME=$2
h)

echo "Usage:”
echo “git_checkout.sh [-i id | -n name]

echo ""

echo ” -i to checkout branch by JIRA id”
echo ” coe to checkout branch by branch name”
echo ” cet help (this output)”

exit 0

esac
done

echo $ISSUE;
Cree RU Le

if [ “$ISSUE" = “true” ]; then
echo "Checking But Branch: $ISSUE_NUM";

echo "SAPP OUI FETCH"
git fetch

echo "SAPP OUT STASH"
git stash

if [ -n "$ISSUE_NUM" ]; then
echo "SAPP OUI CHECKOUT BRANCH”
git checkout feature/ELSOL-$ISSUE_NUM;

echo "SAPP OUT PULL”
git pull origin feature/ELSOL-$ISSUE_NUM;

elif [ -n "$BRANCH NAME” ]; then
echo "SAPP OUI CHECKOUT BRANCH”
git checkout $BRANCH_NAME;

echo "SAPP OUI PULL”
git pull origin $BRANCH_NAME;
fi
