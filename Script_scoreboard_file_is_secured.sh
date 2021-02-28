echo "#
# ScoreBoardFile: File used to store internal server process information.
# Not all architectures require this.  But if yours does (you'll know because
# this file will be  created when you run Apache) then you *must* ensure that
# no two invocations of Apache share the same scoreboard file.
#
ScoreBoardFile /var/run/httpd.scoreboard" >> /etc/httpd/conf/httpd.conf
echo " Manual Check Require file httpd.conf" > Check/scoreboard_file_is_secured.txt
echo "1. Check to see if the ScoreBoardFile is specified in any of the Apache configuration files. If it is not present, the configuration is compliant.
2. Find the directory in which the ScoreBoardFile would be created. The default value is the ServerRoot/logs directory.
3. Verify that the scoreboard file directory is not a directory within the Apache DocumentRoot
4. Verify that the ownership and group of the directory is root:root (or the user under which Apache initially starts up if not root).
5. Change the permissions so that the directory is only writable by root (or the startup user if not root).
6. Check that the scoreboard file directory is on a locally mounted hard drive rather than an NFS mounted file system." >> Check/scoreboard_file_is_secured.txt