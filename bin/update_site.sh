#!/bin/bash

# Updates a drupal site.
#
# usage: 
# update_site.sh <sitename>

ARGS=1;
BACKUPDIR=/tmp/drupal_updates
GIT=/usr/local/bin/git

if [ $# -ne $ARGS ]
    then
    echo "Usage: update_site.sh <sitename>"
    exit;
fi

mkdir -p $BACKUPDIR
cd $BACKUPDIR
$GIT clone git@cmspilot.appstate.edu:$1.git
cd $1
$GIT config core.filemode false
$GIT checkout develop
$GIT remote add drupal git@cmspilot.appstate.edu:drupal.git
$GIT pull drupal master
$GIT checkout master
$GIT merge --no-ff develop
$GIT remote rm drupal
$GIT push
rm -rf $BACKUPDIR

