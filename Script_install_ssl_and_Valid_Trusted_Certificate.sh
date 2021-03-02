#!/bin/bash
sudo yum install epel-release -y
cd /etc/httpd/conf.d/
touch thangblog274.tk.conf
echo "
<VirtualHost *:80>
    ServerName thangblog274.tk
    DocumentRoot /var/www/html
    ServerAlias www.thangblog274.tk
    ErrorLog /var/log/httpderror_apache.log
    CustomLog /var/log/httpdrequests.log combined
</VirtualHost>
" >> thangblog274.tk.conf
