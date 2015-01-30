FROM ubuntu:14.04.1

MAINTAINER Didiet Noor <didiet@ykode.com>

ENV DEBIAN_FRONTEND noninteractive

RUN sed -i 's/archive.ubuntu.com/azure.archive.ubuntu.com/' /etc/apt/sources.list && \
    apt-get -y update && apt-get install vim
    apt-get -y clean && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/*
