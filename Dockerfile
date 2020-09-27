FROM nikolaik/python-nodejs:python3.8-nodejs12

WORKDIR /code-server

COPY . .

RUN ./scripts/install_code_server.sh
RUN ./scripts/install_mega.sh
RUN ./scripts/utilities.sh
RUN ./scripts/languages.sh
RUN ./scripts/code_extensions.sh

CMD [ "/usr/bin/code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
