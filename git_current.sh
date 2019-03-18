#!/bin/sh

BRANCH=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');

echo $BRANCH
