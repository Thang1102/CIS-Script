   #!/bin/bash 
    cd ~
    echo "1. Ensure  the User  and Group directives are present in the Apache configuration and not commented out" > Check/check_WebSrv_run_as_none_root.txt
    grep -i '^User' /etc/httpd/conf/httpd.conf >> Check/check_WebSrv_run_as_none_root.txt
    grep -i '^group' /etc/httpd/conf/httpd.conf >> Check/check_WebSrv_run_as_none_root.txt
    echo "2. Ensure the Apache  account UID is  correct" >> Check/check_WebSrv_run_as_none_root.txt
    grep '^UID_MIN' /etc/login.defs >> Check/check_WebSrv_run_as_none_root.txt 
    id apache >> check_WebSrv_run_as_none_root.txt >> Check/check_WebSrv_run_as_none_root.txt
    echo "3. While  the web server  is  running, check the user id for the httpd processes. The user name should match the configuration file" >> Check/check_WebSrv_run_as_none_root.txt
    ps aux | grep httpd | grep -v '^root' >> Check/check_WebSrv_run_as_none_root.txt