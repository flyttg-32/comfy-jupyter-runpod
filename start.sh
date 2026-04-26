#!/usr/bin/env bash

python3 -m jupyterlab \
  --ip=0.0.0.0 \
  --port=8889 \
  --no-browser \
  --allow-root \
  --ServerApp.token='' \
  --ServerApp.password='' \
  --ServerApp.allow_origin='*' \
  --ServerApp.disable_check_xsrf=True \
  >/workspace/jupyter.log 2>&1 &

exec entrypoint.sh
