#!/bin/bash
#CONF_DIRS="/etc/httpd/conf /etc/httpd/conf.d /etc/httpd/conf_dir2 . . ."
CONF_DIRS = "/etc/httpd/conf.d"
CONFS=$(find $CONF_DIRS -type f -name '*.conf' )
echo "Get host names and ports of all of the virtual hosts"
grep -lR '^\s*<VirtualHost .*>' $CONFS | xargs -d '\n' cat >> Check/Check_Ensure_All_Web_Content_is_Accessed_via_HTTPS.txt
cd ~
echo "###########################"
echo "For each of the URL’s test with curl, and truncate the output to 300 characters"
curl http://hocvienact.ml >> Check/Check_Ensure_All_Web_Content_is_Accessed_via_HTTPS.txt