FROM debian:latest

WORKDIR /code-server

COPY install_code_server .

RUN ./install_code_server

USER nava

CMD [ "code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
