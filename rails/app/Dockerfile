FROM ruby

WORKDIR /usr/src/app

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential curl apt-utils apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs yarn && \
    rm -rf /var/lib/apt/lists/*

RUN gem install rails
