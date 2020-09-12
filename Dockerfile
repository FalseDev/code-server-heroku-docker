FROM debian:latest

WORKDIR /code-server

COPY install_code_server.sh .

COPY config.yaml .

RUN ./install_code_server.sh

CMD [ "code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
