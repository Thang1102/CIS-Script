#!/bin/bash
echo '# Block all files by default, unless specifically allowed.
<FilesMatch "^.*$">
Require all denied
</FilesMatch>
# Allow files with specifically approved file extensions
# Such as (css, htm; html; js; pdf; txt; xml; xsl; ...), 
# images (gif; ico; jpeg; jpg; png; ...), multimedia 
<FilesMatch "^.*\.(css|html?|js|pdf|txt|xml|xsl|gif|ico|jpe?g|png)$">
Require all granted 
</FilesMatch>'>> /etc/httpd/conf/httpd.conf