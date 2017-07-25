FROM ubuntu:latest
MAINTAINER Konrad Kühne konrad.kuehne@protonmail.com

# update the APT cache
WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get upgrade -y

# install and setup project dependencies
RUN apt-get install -y wget ruby-dev bzip2 build-essential

RUN mkdir -p /usr/src/app

# fetch riemann
RUN wget https://github.com/riemann/riemann/releases/download/0.2.14/riemann-0.2.14.tar.bz2 -O /usr/src/app/riemann-0.2.14.tar.bz2

# verify tarball
RUN wget https://github.com/riemann/riemann/releases/download/0.2.14/riemann-0.2.14.tar.bz2.md5 -O /usr/src/app/riemann-0.2.14.tar.bz2.md5
RUN cd /usr/src/app && md5sum -c riemann-0.2.14.tar.bz2.md5

# extract riemann
RUN tar xvf /usr/src/app/riemann-0.2.14.tar.bz2 -C /usr/src/app

# install riemann tools
RUN gem install riemann-client riemann-tools riemann-dash

COPY start.sh /usr/src/app

CMD ["sh", "start.sh"]
