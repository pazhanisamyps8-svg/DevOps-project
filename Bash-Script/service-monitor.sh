#/bin/bash

# To monitor the Service status 

SERVICE=httpd

if systemctl is-active --quiet $SERVICE; then
	echo " The $SERVICE is active "
else 
	echo " The $SERVICE not active "
# if the Service not activate need to active 
       systemctl enable httpd
       systemctl start httpd
#Again verify the service status 
 
if systemctl is-active --quiet $SERVICE; then
	echo "The service not active before now only activate"
 fi
       
fi 
