#!/usr/bin/sh

+

# git_reset_to_head.sh - script for pushing a branch
+

source .git_config
echo $APP_MSG

if [ $# -eq 0 ]; then
echo "Missing options!”
echo "(run $0 -h for help)”

echo ""
exit 0
bam
ECHO="false”

while getopts “hb” OPTION; do
case SOPTION in

b)

st
echo "Usage:”
echo "“git_reset_to_ head.sh -h ™
echo "“git_reset_to_head.sh -b

echo ""

echo ” -b branch to push”
echo ” cet help (this output)”
exit 0

esac
done

if [ "$BRANCH"™ = “true” J]; then
echo "Resetting Branch: $BRANCH_ NAME”;
git reset --hard HEAD

echo "Removing Untracked files from Branch: $BRANCH_NAME"”;
git clean -f -d
bam
