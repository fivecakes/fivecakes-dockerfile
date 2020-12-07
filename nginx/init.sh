#!/bin/bash

mkdir -p /workspace/log/nginx/
touch /workspace/log/nginx/access.log /workspace/log/nginx/access-demo.log /workspace/log/nginx/error.log /workspace/log/nginx/error-demo.log

/etc/init.d/cron start
/usr/local/nginx/sbin/nginx -g 'daemon off;'
