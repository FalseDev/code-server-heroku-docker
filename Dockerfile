FROM debian:latest

WORKDIR /code-server

COPY install_code_server.sh .

RUN ./install_code_server.sh

USER nava

CMD [ "code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
