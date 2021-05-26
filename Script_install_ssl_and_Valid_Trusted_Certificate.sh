#!/bin/bash
yum install epel-release -y
cd /etc/httpd/conf.d/
touch blogctf.tk.conf
echo "
<VirtualHost *:80>
    ServerName blogctf.tk
    DocumentRoot /var/www/html
    ServerAlias www.blogctf.tk
    ErrorLog /var/log/httpderror_apache.log
    CustomLog /var/log/httpdrequests.log combined
</VirtualHost>
" >> blogctf.tk.conf
