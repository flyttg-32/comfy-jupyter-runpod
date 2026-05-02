FROM krist1k/comfy:v0.14.2-cuda-12.9-py312

RUN python3 -m pip install jupyterlab

COPY jupyter.conf /etc/supervisor/conf.d/jupyter.conf

EXPOSE 18188 8889
