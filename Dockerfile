FROM krist1k/comfy:v0.14.2-cuda-12.9-py312

RUN python3 -m pip install jupyterlab

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 18188 8889

CMD ["bash", "-lc", "/start.sh"]
