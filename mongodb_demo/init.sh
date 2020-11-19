#!/bin/bash

cp /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

mkdir -p /workspace/data/mongodb_demo/
mkdir -p /workspace/log/mongodb_demo/
echo "" >> /workspace/log/mongodb_demo/mongodb_demo.log


mongod -f /etc/mongod.conf
