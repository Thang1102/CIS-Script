touch /var/www/html/.htaccess
echo " RewriteEngine On 
RewriteCond %{THE_REQUEST} !HTTP/1\.1$
RewriteRule .* - [F] 
RewriteOptions Inherit" >> /var/www/html/.htaccess