
FROM ubuntu:20.04 AS builder

# install ansible and git
RUN apt-get update && apt-get install -y \
    ansible \
    git \
    pip3

RUN mkdir /root

ADD . /root

WORKDIR /root

RUN pip3 install -y \
    -r requirements.txt

# RUN ansible-galaxy collection install -r requirements.yml