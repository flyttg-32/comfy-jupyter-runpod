FROM krist1k/comfy:v0.14.2-cuda-12.9-py312

RUN /venv/main/bin/python -m pip install --no-cache-dir jupyterlab

EXPOSE 18188 8888

CMD bash -lc "nohup /venv/main/bin/python -m jupyterlab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --ServerApp.token='' --ServerApp.password='' --ServerApp.allow_origin='*' --ServerApp.disable_check_xsrf=True > /workspace/jupyter.log 2>&1 & exec entrypoint.sh"
