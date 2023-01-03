
FROM ubuntu:20.04 AS builder

# install ansible and git
RUN apt-get update && apt-get install -y \
    ansible \
    git \
    python3-pip

RUN mkdir /base-directory

ADD . /base-directory

WORKDIR /base-directory

RUN pip3 install -y \
    -r requirements.txt

# RUN ansible-galaxy collection install -r requirements.yml