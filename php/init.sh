#!/bin/bash

mkdir -p /workspace/log/php-fpm/
touch /workspace/log/php-fpm/access.log /workspace/log/php-fpm/error.log


# 查找并替换git所在行/bin/bash为/usr/bin/git-shell
line=`sed -n  '/git:/=' /etc/passwd`
sed -i "" "${line}s/\/bin\/sh/\/usr\/bin\/git-shell/g" /etc/passwd

# 临时解决letsencrypt被墙问题
echo "23.32.3.72     ocsp.int-x3.letsencrypt.org" >> /etc/hosts

/etc/init.d/cron start
/usr/local/sbin/php-fpm
