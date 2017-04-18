FROM mysql:5.7

RUN useradd --user-group --create-home --shell /bin/false app
RUN chown -R app:app $HOME/ \
    && apt-get update -y
