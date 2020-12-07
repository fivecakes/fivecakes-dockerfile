#!/bin/bash

mkdir -p /workspace/log/php-fpm/
touch /workspace/log/php-fpm/access.log /workspace/log/php-fpm/error.log

mkdir -p /workspace/ssh/

if [ ! -f "/workspace/ssh/authorized_keys" ]; then
	ssh-keygen -t rsa -N "" -f /workspace/ssh/git@skynet
	cat /workspace/ssh/git@skynet.pub >> /workspace/ssh/authorized_keys
fi

mkdir -p /home/git/.ssh/
cp /workspace/ssh/authorized_keys /home/git/.ssh/authorized_keys
chown -R git:git /home/git/.ssh/

# 查找并替换git所在行/bin/bash为/usr/bin/git-shell
# line=`sed -n  '/git:/=' /etc/passwd`
# sed -i "${line}d" /etc/passwd
# echo "git:x:1001:1000:,,,:/home/git:/usr/bin/git-shell" >> /etc/passwd

# 临时解决letsencrypt被墙问题
echo "23.32.3.72     ocsp.int-x3.letsencrypt.org" >> /etc/hosts

/etc/init.d/ssh start
/etc/init.d/cron start
/usr/local/sbin/php-fpm
