#!/bin/bash
touch /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
echo -e "\nManual Check Required: Single Purpose Directory\n" >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
echo -e "\nOutside the Configured Web DocumentRoot\n" >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
# Set the WR_DIR to the writable directory such as the example shown below
WR_DIR=/var/lib/php/session
# DOCROOT is the DocmentRoot directory for the web site or virtual host.
DOCROOT=$(grep -i '^DocumentRoot' /etc/httpd/conf/httpd.conf | cut -d' ' -f2 | tr -d '\"')
# Get Inode number of the writable Directory
INUM=$(stat -c '%i' $WR_DIR)
# Verify the directory is not found (No output = Not found)
find -L $DOCROOT -inum $INUM >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
echo -e "\nOwned by the root User or an Administrator Account\n" >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
stat -c '%U' $WR_DIR/ >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
echo -e "\nNot writable by Other\n" >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt
find $WR_DIR/ -perm /o=w -ls >> /root/Check/Access_to_Special_Purpose_Application_Writable_Directories.txt