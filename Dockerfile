FROM debian:buster-slim as builder-base

RUN apt-get update -y

RUN apt-get install -y \
    build-essential \
    curl \
    nodjs \
    npm \
    yarn


FROM builder-base as builder

ADD . /app
WORKDIR /app

COPY . ./
RUN npm install && npm run truffle:compile

EXPOSE 8545
CMD ["npm", "run", "build"]