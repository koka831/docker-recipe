#!/bin/bash

: "install deps" && {
  bundle install --quiet --path vendor/bundle
  yarn install
}

: "setup database" && {
  rake db:create
  rake db:migrate
  rake db:seed
  rake db:seed_fu
}

: "run server" && {
  cd /usr/src/app && bundle exec rails server -b '0.0.0.0' -p 3000
}


