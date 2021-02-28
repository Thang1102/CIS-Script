#!/bin/bash
setsebool -P httpd_enable_cgi off
getsebool httpd_enable_cgi >> Check/Check_Only_the_Necessary_SELinux_Booleans_are_Enabled.txt