echo "#
# PidFile: The file in which the server should record its process
# identification number when it starts.
#
PidFile /var/run/httpd.pid" >> /etc/httpd/conf/httpd.conf
echo " Manual Check Require file httpd.conf" > Check/pid_file_secured.txt
echo "1. Find the directory in which the PidFile would be created. The default value is the ServerRoot/logs directory.
2. Verify that the process ID file directory is not a directory within the Apache DocumentRoot
3. Verify that the ownership and group of the directory is root:root (or the user under which Apache initially starts up if not root).
4. Verify the permissions on the directory are only writable by root (or the startup  user if not root)." >> Check/pid_file_secured.txt