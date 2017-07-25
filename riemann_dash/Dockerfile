FROM debian

RUN apt-get update && apt-get install -y ruby ruby-dev build-essential && \
    gem install --no-ri --no-rdoc riemann-dash
ENV RIEMANN_DASH_CONFIG /config.rb
EXPOSE 4567/tcp
COPY ./config.rb /config.rb
CMD ["riemann-dash"]
