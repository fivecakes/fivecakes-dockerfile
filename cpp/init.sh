#!/bin/sh
conda run -n cling /bin/bash -c
jupyter lab --ip='0.0.0.0' --port=8888 --no-browser --notebook-dir=/jupyter --allow-root