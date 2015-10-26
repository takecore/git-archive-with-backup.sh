#!/bin/sh

# -------------------------------------------------------
# A shell script that generates a MIT LICENSE file
# Written by: takecore
# Last updated on: 2015/10/22
# -------------------------------------------------------

ORIGIN_BRANCH=`git rev-parse --abbrev-ref HEAD`
FROM_RIVISION=$1
TO_RIVISION=HEAD
if [ "$2" ]; then
	TO_RIVISION=$2
fi

# as you like change below
DIFF_LIST_PATH=$HOME/Desktop/diff_list_$FROM_RIVISION
RELEASE_ARCHIVE_PATH=$HOME/Desktop/release_$FROM_RIVISION.zip
BACKUP_ARCHIVE_PATH=$HOME/Desktop/backup_$FROM_RIVISION.zip

# archive start
git diff --name-only $TO_RIVISION $FROM_RIVISION > $DIFF_LIST_PATH
git archive --format=zip $TO_RIVISION `git diff --diff-filter=D --name-only $TO_RIVISION $FROM_RIVISION` -o $RELEASE_ARCHIVE_PATH
git checkout $FROM_RIVISION
zip $BACKUP_ARCHIVE_PATH -@ < $DIFF_LIST_PATH
rm $DIFF_LIST_PATH
git checkout $ORIGIN_BRANCH
