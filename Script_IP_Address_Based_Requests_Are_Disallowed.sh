#! /bin/bash
echo " 
RewriteCond %{HTTP_HOST} ^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$
RewriteRule (.*) http://thangblog247.tk/$1 [R=301,L] " >> /var/www/html/.htaccess