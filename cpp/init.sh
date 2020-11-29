#!/bin/bash
conda activate cling
jupyter lab --ip='0.0.0.0' --port=8888 --no-browser --notebook-dir=/jupyter --allow-root