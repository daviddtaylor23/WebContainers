#!/usr/bin/bash

sed -i "s/--CID--/$(cat /etc/hostname)/g" /var/www/html/index.html

#Start apache2 in foreground
/usr/sbin/apache2ctl -D FOREGROUND

