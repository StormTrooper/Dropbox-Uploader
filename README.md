# Dropbox Uploader

This is a fork of https://github.com/andreafabrizi/Dropbox-Uploader

I have made a modification on the list paramater so that the modification field is now retrieved.

With some hacked up bash scripts this now allows you to delete files on DropBox that are older than x days.

There are probably a lot of better and more efficient ways to do this but this way a quick hack job and seems to work well for me.

I have modified dropbox_uploader.sh so that when you run for example "dropbox_uploader list directory"
The following is now returned:

[F] 143179    filename Tue, 18 Mar 2014 01:05:42 +0000

I have then created a bash file (del_dropbox.sh) which takes the above output and saves it to /tmp/files.txt
It also takes 2 command line parameters, folder, and days, so that files older than x days will be deleted.

This is all wrapped up in del_old_files.sh which calls the previous file and passes the directory name and number of days to keep.


Edit del_dropbox.sh & del_old_files.sh and change the location of your dropbox folder.


