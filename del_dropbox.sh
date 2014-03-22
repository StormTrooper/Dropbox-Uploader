#!/usr/bin/env bash
db_location="/root/Dropbox-Uploader"
cur_date=`date +%s`

if [ "$1" == "" ] || [ "$2" == "" ] 
then 
	echo "Usage: ./del_dropbox Directory No_of_Days"
	exit 0
fi

while read line	
do
	if [[ ${line:0:3} = "[F]" ]] 
	then
		file=`cut -d " " -f 3 <<< $line`
		filedate=`cut -d "," -f 2 <<< "$line"`
		filedate=`date -d "$filedate" +%s`
		diff=`echo $(( (cur_date-filedate)/86400))`
		if [ $diff -ge $2 ]
		then
			$db_location/dropbox_uploader.sh delete $1/$file 
		fi
	fi
done< /tmp/files.txt

