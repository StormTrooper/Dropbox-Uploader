#!/usr/bin/env bash
days=30
db_location="/root/Dropbox-Uploader"

folder="home/backup/data"
$db_location/dropbox_uploader.sh list $folder /tmp/files.txt
$db_location/del_dropbox.sh $folder $days


