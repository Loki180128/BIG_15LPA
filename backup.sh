#!/bin/bash


<<info

this shell scripts will take backups

info

src=$1
dect=$2

timestamp=$(date '+%Y-%m-%d')
echo -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backup done"
 
