FROM ubuntu

LABEL "maintainer"="cjvalenciaii@gmail.com"

RUN apt update \
    && apt install -y software-properties-common \
    && apt-add-repository ppa:ansible/ansible \
    && apt update \
    && apt install -y ansible \
    && ansible --version

