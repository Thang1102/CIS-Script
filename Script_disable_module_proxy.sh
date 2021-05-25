#!/bin/bash
cd /etc/httpd/conf.modules.d/
mv 00-proxy.conf 00-proxy.conf.bak
cd /etc/httpd/conf.d/
mv autoindex.conf autoindex.conf.bak
cd root
