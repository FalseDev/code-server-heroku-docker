FROM debian:latest

WORKDIR /code-server

COPY . .

RUN ./scripts/install_code_server.sh
RUN ./scripts/install_mega.sh
RUN ./scripts/userconf.sh
RUN ./scripts/code_extensions.sh

CMD [ "code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
