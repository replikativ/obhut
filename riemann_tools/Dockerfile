FROM ubuntu:latest
MAINTAINER Konrad Kühne konrad.kuehne@protonmail.com

# update the APT cache
RUN mkdir -p /usr/src/app/riemann_dash

RUN apt-get update

RUN apt-get upgrade -y

# install and setup project dependencies
RUN apt-get install -y ruby-dev build-essential

# install riemann tools
RUN gem install riemann-tools riemann-dash

COPY start.sh /usr/src/app

WORKDIR /usr/src/app

CMD ["sh", "start.sh"]
