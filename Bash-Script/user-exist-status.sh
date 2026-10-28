#!/bin/bash 

# This script check The user is exist or not for the computer .

while read user

do

 grep -q "^$user:" | /etc/passwd && echo "The $user is exist" || echo "The $user is not exist"

done < users.txt 
