#!/bin/bash

# snapdrop
node /deploy/snapdrop_server/index.js &

# mathjax version 2
node /deploy/math/index.js --port 6001 &
node /deploy/math/index.js --port 6002 &
node /deploy/math/index.js --port 6003 &
node /deploy/math/index.js --port 6004 &
node /deploy/math/index.js --port 6005

