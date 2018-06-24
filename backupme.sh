#!/bin/bash

from=$1 # first input
to=$2  # second input
cd $from #open first input folder
cp -r * $to # copy files to second input folder
cp $to #open second input folder
DATE="$(date +'%Y-%m-%d')" #date
for x in $(ls) #run amount of files in the folder
do
	a=$x
	mv ./$a ./backedup_$a'_'DATE.bac
done
