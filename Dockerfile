FROM debian:latest

WORKDIR /code-server

COPY . .

ADD https://mega.nz/linux/MEGAsync/Debian_10.0/amd64/megacmd-Debian_10.0_amd64.deb ./mega.deb

RUN ./install_code_server.sh

CMD [ "code-server", "--config", "config.yaml", "--bind-addr", "0.0.0.0:$PORT" ]
