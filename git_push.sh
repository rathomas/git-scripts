#!/usr/bin/sh
a

# git_push.sh - script for pushing a branch

+

source .git_config
echo $APP_MSG

if [ $# -eq 0 ]; then

echo "Missing options!”

echo "(run $0 -h for
echo ""
exit 0

bam

ECHO="false”

help)”

while getopts “hb” OPTION; do

case SOPTION in

b)

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

"Usage:”

"git_push.sh -h ”
"git_push.sh -b ”

" -b branch to push”

" cet help (this output)”
Lt)

if [ "$BRANCH"™ = “true” J]; then
echo "Pushing Branch: $BRANCH_NAME";

echo "SAPP OUT PUSH”

git push origin $BRANCH_ NAME;

bam
