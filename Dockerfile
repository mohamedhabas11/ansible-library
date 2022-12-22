
FROM ubuntu:20.04 AS builder

# install ansible and git
RUN apt-get update && apt-get install -y \
    ansible \
    git

RUN mkdir /root

ADD . /root
