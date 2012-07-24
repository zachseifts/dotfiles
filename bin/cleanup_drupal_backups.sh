#!/bin/bash

DRUPAL_BACKUPS=/Users/zach/projects/backup
THINGS_BACKUP=/Volumes/things/backups
find $DRUPAL_BACKUPS -type f -mtime +7 -exec mv {} $THINGS_BACKUP \;

