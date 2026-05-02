FROM krist1k/comfy:v0.14.2-cuda-12.9-py312

RUN /venv/main/bin/python -m pip install jupyterlab notebook

COPY jupyter.conf /etc/supervisor/conf.d/jupyter.conf

EXPOSE 18188 8889
