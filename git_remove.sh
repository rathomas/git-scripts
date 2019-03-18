#!/usr/bin/sh

+

# git_remove.sh - script for deleting a branch
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

while getopts "hi" OPTION; do
case SOPTION in

i)
ISSUE="true”
ISSUE_NUM=§2

h)
echo "Usage:”
echo "“git_remove.sh -h ”
echo “git_remove.sh -e ”

echo ""

echo " = to execute create branch”
echo ” cet help (this output)”

exit 0

esac
done

echo $ISSUE;
Celso S TL MLL

if [ “$ISSUE" = “true” ]; then
echo “Deleting Branch: $ISSUE_NUM"

echo "SAPP OUI DELETE REMOTE”
git push --delete origin feature/ELSOL-$ISSUE_NUM 2>«1

echo "SAPP OUT DELETE LOCAL”
git branch -d feature/ELSOL-$ISSUE_NUM 2>«1
vai
