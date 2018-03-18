#!/bin/bash

: "cd WORKDIR" && {
  # need to set env $WORKDIR on Dockerfile
  cd $WORKDIR
}

: "install deps" && {
  gem install bundler
  bundle install --quiet --path vendor/bundle
}

: "install js deps" || {
  npm install
}

: "setup database" && {
  bundle exec rails db:create
  bundle exec rails db:migrate
  bundle exec rails db:seed
}

: "run server" && {
  bundle exec rails server -b '0.0.0.0' -p 3000
}


