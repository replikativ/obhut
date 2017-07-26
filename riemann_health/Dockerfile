FROM debian

RUN apt-get update && apt-get install -y ruby ruby-dev build-essential zlib1g-dev && \
    gem install --no-ri --no-rdoc riemann-tools

ENV RIEMANN_HEALTH_SERVER_HOSTNAME riemann

RUN mkdir /usr/src/app

COPY ./entrypoint.sh /usr/src/app

WORKDIR /usr/src/app

CMD ["sh", "entrypoint.sh"]
