#!/bin/bash


<<info

this shell scripts will take backups

can also be used with crown
info

src=$1
dect=$2

timestamp=$(date '+%Y-%m-%d')
echo -r "$dest/backup-$timestamp.zip" $src > /dev/null

echo "backup done"
 
echo "Kya haal hai"
