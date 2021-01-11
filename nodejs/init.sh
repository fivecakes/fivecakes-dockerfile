#!/bin/bash

cd /deploy/mathjax3/
node -r esm index.js &  
node /deploy/math/index.js

