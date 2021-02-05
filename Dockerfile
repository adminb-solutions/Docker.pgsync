FROM ruby:alpine as base

RUN apk add --no-cache libpq

RUN apk add --no-cache --virtual .build-deps \
  alpine-sdk \
  ruby-dev \
  postgresql-dev \
&& gem install pgsync \
&& apk del .build-deps

WORKDIR /sync

COPY ./config .

ENTRYPOINT [ "pgsync" ]