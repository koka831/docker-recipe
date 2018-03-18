FROM amazonlinux:2017.12.0.20180222

LABEL version "2017.12.0.20180222"
LABEL maintainer "koka <koka.code@gmail.com>"

ENV RUBY_VERSION 2.5.0
ENV HOME /usr/local/src

# ruby deps
RUN yum -y update && \
    yum -y install bzip2 git make gcc-c++ glibc-headers openssl-devel \
    readline libyaml-devel readline-devel zlib zlib-devel libffi-devel \
    libxml2 libxslt libxml2-devel libxslt-devel sqlite-devel tar

# rbenv deps
RUN git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
ENV PATH $HOME/.rbenv/bin:$PATH

# install rbenv install command
RUN mkdir -p $HOME/.rbenv/plugins && \
    git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build
RUN echo $PATH
# install ruby
RUN rbenv install $RUBY_VERSION && \
    rbenv global $RUBY_VERSION && \
    rbenv rehash

ENV PATH $HOME/.rbenv/shims:$PATH

EXPOSE 3000
