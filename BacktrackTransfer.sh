
#!/bin/sh

# This script moves all files from your Line6 BackTrack to your computer.
# Maybe invoke it with a udev rule once it's actually working and I find the time

#New directory with today's date -- keeps the jams organized
datestamp=$(date +%Y%m%d)

# You can change the default directory in the following line:
dir -p  $~/Music/BackTrack/"$foldername"/

# The script could use some serious error handling here . . . But we musicians live on the edge
# 	Evantually I'd like to Checksum the data. Pre and post backup.
# 	Grab a star rating -- first impressions / commit notes
#	Also set off an encoder script to opus the data as well. 
# 	Then create a CD iso when ~/Music/BackTrack/ achieves a set size -- cron job? 

#  Need to error check here  In case there's already another directory with the same date, etc. Commenting out for now.
##
### if [ -d ~/Music/Backtrack/ ]
##then
##    echo Moving files from BackTrack to $foldername
##
##else
##echo Music Directory does not exist. Create it? 
##
### need a mkdir function here. 
##
##fi
##
##if [ -d ~/Music/Backtrack/"$foldername" ]
##then
##    echo Moving files from BackTrack to $foldername
##fi
## 

# Otherwise: Move the tracks!
 mv /media/jaco/BACKTRACK/MARKED "~/Music/Backtrack/$foldername"/
 mv /media/jaco/BACKTRACK/UNMARKED "~/Music/Backtrack/"$foldername"/

exit
