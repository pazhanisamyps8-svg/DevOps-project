#!/bin/bash 

#To Alart the Disk was use 80% 

xyz=80
usage=$(df -h / | awk 'NR==2 {print$5}' | sed 's/%//')


if [ $usage -gt $xyz ]; then
       echo "Your / Disk useage morethen 80% "
else 
      echo " Your machine /disk usage is normal $usage"
fi       
