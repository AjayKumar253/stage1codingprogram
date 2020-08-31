#!/bin/bash -x
currentDate=$(date +'%d%m%Y')
for file in `ls *.log.1`
do
   fileName=`echo $file | awk -F. '{print $1}'`
   newFileName=`echo "$fileName-$currentDate.log"`
   mv $file $newFileName
done

