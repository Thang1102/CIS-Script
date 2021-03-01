#!/bin/bash
#
# Step 1 — Installing the Certbot Let’s Encrypt Client
# To add the CentOS 8 EPEL repository, run the following command:
yum -y install epel-release
# Now that you have access to the repository, install all of the required packages:
yum -y install certbot python3-certbot-apache mod_ssl
# Step 2 - Create virtual host
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
echo "Manual install Certificate use file Setup_LetsEncrypt"
