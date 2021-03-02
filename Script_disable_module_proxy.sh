#!/bin/bash
cd /etc/httpd/conf.modules.d/
mv 00-proxy.conf 00-proxy.conf.bak
# mv 10-proxy_h2.conf 10-proxy_h2.conf.bak
cd /etc/httpd/conf.d/
mv autoindex.conf autoindex.conf.bak
cd ~
