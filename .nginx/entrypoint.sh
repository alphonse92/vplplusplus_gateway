#!/bin/sh
CONF_PATH="/etc/nginx/conf.d/gateeway.conf"
printenv >> .env
j2 --format=env  default.conf.template .env >  $CONF_PATH
cat $CONF_PATH
nginx -g 'daemon off;'