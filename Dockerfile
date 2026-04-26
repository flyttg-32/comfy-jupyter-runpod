FROM krist1k/comfy:v0.14.2-cuda-12.9-py312

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install jupyterlab

EXPOSE 18188 8888

CMD bash -lc "python3 -m jupyterlab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --ServerApp.token='' --ServerApp.password='' --ServerApp.allow_origin='*' --ServerApp.disable_check_xsrf=True > /workspace/jupyter.log 2>&1 & exec entrypoint.sh"
