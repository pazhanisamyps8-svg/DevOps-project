# Delete the 7 Days old Logs 

find /var/log/ -type f -name "*.log" -mtime +7 -exec rm -f {} \;

echo " 7 Days old logs are deleted sucessfully " 
