#!/bin/bash

mkdir -p /workspace/data/db/
mkdir -p /workspace/log/mongodb/
echo "" >> /workspace/log/mongodb/mongod.log

mongod -f /etc/mongod.conf
