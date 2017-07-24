FROM ubuntu:latest
MAINTAINER Konrad Kühne konrad.kuehne@protonmail.com

# Update the APT cache
RUN apt-get update
RUN apt-get upgrade -y

# Install and setup project dependencies
RUN apt-get install -y curl git wget unzip zip ruby-dev

# Fetch riemann
WORKDIR /usr/src/app

RUN wget https://github.com/riemann/riemann/releases/download/0.2.14/riemann-0.2.14.tar.bz2
RUN tar xvfj riemann-0.2.14.tar.bz2

# Verify tarball
RUN wget https://github.com/riemann/riemann/releases/download/0.2.14/riemann-0.2.14.tar.bz2.md5
RUN md5sum -c riemann-0.2.14.tar.bz2.md5

# install some 
