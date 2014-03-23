#!/usr/bin/env bash
days=7
db_location="/root/Dropbox-Uploader"

folder="home/backup/data"
$db_location/dropbox_uploader.sh list $folder > /tmp/files.txt
$db_location/del_dropbox.sh $folder $days


folder="home/backup/config"
$db_location/dropbox_uploader.sh list $folder > /tmp/files.txt
$db_location/del_dropbox.sh $folder $days

folder="home/backup/database"
$db_location/dropbox_uploader.sh list $folder > /tmp/files.txt
$db_location/del_dropbox.sh $folder $days


