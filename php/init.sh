#!/bin/bash

mkdir -p /workspace/log/php-fpm/
touch /workspace/log/php-fpm/access.log /workspace/log/php-fpm/error.log

mkdir -p /workspace/ssh/

if [ ! -f "/workspace/ssh/authorized_keys" ]; then
	ssh-keygen -t rsa -N "" -f /workspace/ssh/key4skynet
	cat /workspace/ssh/key4skynet.pub >> /workspace/ssh/authorized_keys
fi

mkdir -p /home/git/.ssh/
cp /workspace/ssh/authorized_keys /home/git/.ssh/authorized_keys
chown -R git:www-data /home/git/.ssh/

git config --global user.email "git@fivecakes.com"
git config --global user.name "hooks"

# 临时解决letsencrypt被墙问题
echo "23.32.3.72     ocsp.int-x3.letsencrypt.org" >> /etc/hosts

/etc/init.d/ssh start
/etc/init.d/cron start
/usr/local/sbin/php-fpm
