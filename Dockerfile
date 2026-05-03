FROM flyttg/comfy-base:latest

RUN /venv/main/bin/python -m pip install jupyterlab notebook

COPY jupyter.conf /etc/supervisor/conf.d/jupyter.conf

EXPOSE 18188 8889
