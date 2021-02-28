#!/bin/sh
#
# Verify the CoreDumpDirectory directive is not enabled
touch /root/Check/CoreDumpDirectory.txt
echo "check CoreDumpDirectory in apache is disable" >> /root/Check/CoreDumpDirectory.txt
cd /etc/httpd/conf
if grep -qF "CoreDumpDirectory" httpd.conf;then
   echo "Found it" >> /root/Check/CoreDumpDirectory.txt
else
   echo "Sorry this string not in file" >> /root/Check/CoreDumpDirectory.txt
fi
# Must be owned by root and have a group ownership of theApache group
chown root:apache /var/log/httpd
# Must have no  read-write-search access permission for other users
chmod o-rwx /var/log/httpd
cd /root