#!/bin/bash

# mathjax version 3
cd /deploy/mathjax3/
node -r esm index.js --port 6000 &

# mathjax version 2
node /deploy/math/index.js --port 6001 &
node /deploy/math/index.js --port 6002 &
node /deploy/math/index.js --port 6003 &
node /deploy/math/index.js --port 6004 &
node /deploy/math/index.js --port 6005

