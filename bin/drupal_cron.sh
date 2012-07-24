#!/bin/bash

DRUSH=/usr/local/bin/drush
PROJECTS=$HOME/projects/dev

for d in $(find $PROJECTS -type d -depth 1)
do
  if [ -f $d/sites/default/settings.php ]; then
    $DRUSH -r $d cron
  fi
done

