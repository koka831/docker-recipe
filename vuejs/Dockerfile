FROM node:alpine

WORKDIR /home/node

RUN apk add --no-cache libc6-compat
RUN yarn add vue webpack webpack-dev-server

# TODO: set env HOST=0.0.0.0
# and modify config/index.js
# host: process.env.HOST
CMD ["yarn", "start"]
