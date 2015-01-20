#! /bin/bash

#Jesus Gawd this script is rough. Barely even functional at the mo. But I've got an appointment so I'll throw it up on the Github and fix it later. 

foldername=$(date +%Y%m%d)

read -p "Where do you want to save your tracks?" DIRECTORY
cd $DIRECTORY

mkdir -p  $DIRECTORY/"$foldername"/

mv /media/BACKTRACK/MARKED "$DIRECTORY"/"$foldername"/

mv /media/BACKTRACK/UNMARKED "$DIRECTORY"/"$foldername"/
