#!/bin/bash

#replace with external drive
backup=/Volumes/backup
exclude=/Volumes/backup/.rsync/exclude
full_backup=$backup/$(hostname)
rsync=/usr/bin/rsync

quit() {
    exit 1
}

if [[ -z $1 ]]
then
    echo "No backup source."
    quit
fi

if [[ -d $backup ]]
then
    if [[ ! -d $full_backup ]]
    then
        mkdir $full_backup
    fi

    rsync -avz --delete --delete-excluded --exclude-from=$exclude --links $1 $full_backup
else
    echo "Drive is not mounted."
    quit
fi

quit

