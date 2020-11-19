#!/bin/bash

mkdir -p /workspace/log/nginx/
touch /workspace/log/nginx/access.log /workspace/log/nginx/access-demo.log /workspace/log/nginx/error.log /workspace/log/nginx/error-demo.log
chmod 777 /workspace/log/nginx -R

/etc/init.d/cron start
/usr/local/nginx/sbin/nginx -g 'daemon off;'
