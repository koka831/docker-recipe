# Dockerfile for Elixir Phoenix Application
FROM elixir:1.4.2
MAINTAINER koka <koka.code@gmail.com>

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y locales

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV PHOENIX_VERSION 1.2.1

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs


WORKDIR /usr/local/share

EXPOSE 4000

