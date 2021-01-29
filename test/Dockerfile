FROM ruby:3.0.0-alpine


RUN apk update
RUN apk upgrade

RUN apk add --no-cache \
    bash git vim openssh openssl yarn sudo su-exec shadow tzdata \
    postgresql-client postgresql-dev \
    build-base libxml2-dev libxslt-dev


ARG UID=1000
ARG GID=1000

RUN mkdir -p /var/mail
RUN groupadd -g $GID devel
RUN useradd -u $UID -g devel -m devel
RUN echo "devel ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN apk add --no-cache openssl

USER devel

RUN openssl rand -hex 64 > /home/devel/.secret_key_base
RUN echo $'export SECRET_KEY_BASE=$(cat /home/devel/.secret_key_base)' \
  >> /home/devel/.bashrc

WORKDIR /apps
