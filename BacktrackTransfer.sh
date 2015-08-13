#! /bin/bash

#Jesus Gawd this script is rough. Barely even functional at the mo. But it works! Anyway, I've got a session (lets be honest) so I'll throw it up on the Github and fix it later. 

#Update 8-12-2015 Something's changed in debian jessie and this script is no longer working. I had the wild, late night idea to create and use a symlink to do the syncup, but I'm unable to code in this half-sleep state.  

foldername=$(date +%Y%m%d)

read -p "Where do you want to save your tracks?" DIRECTORY
cd $DIRECTORY

mkdir -p  $DIRECTORY/"$foldername"/

mv /media/BACKTRACK/MARKED "$DIRECTORY"/"$foldername"/

mv /media/BACKTRACK/UNMARKED "$DIRECTORY"/"$foldername"/
