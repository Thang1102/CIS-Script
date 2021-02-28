# echo "#
# # The LockFile directive sets the path to the lockfile used when Apache
# # is compiled with either USE_FCNTL_SERIALIZED_ACCEPT or
# # USE_FLOCK_SERIALIZED_ACCEPT. This directive should normally be left at
# # its default value. The main reason for changing it is if the logs
# # directory is NFS mounted, since the lockfile MUST BE STORED ON A LOCAL
# # DISK. The PID of the main server process is automatically appended to
# # the filename. 
# #
# LockFile /var/lock/httpd.lock" >> /etc/httpd/conf/httpd.conf
echo " Manual Check Require file httpd.conf" > Check/lock_file_is_secure.txt
echo "1. Verify that the lock file directory is not a directory within the Apache DocumentRoot
2. Verify that the ownership and group of the directory is root:root (or the user under which Apache initially starts up if not root).
3. Verify the permissions on the directory are only writable by root (or the startup user if not root),
4. Check that the lock file directory is on a locally mounted hard drive rather than an NFS mounted file system" >> Check/lock_file_is_secure.txt