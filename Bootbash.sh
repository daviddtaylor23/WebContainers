#!/usr/bin/bash

sed -i "s/--CID--/$(cat /etc/hostname)/g" /var/www/html/index.html
/usr/sbin/apache2ctl -D FOREGROUND
