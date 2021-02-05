FROM ruby:alpine

RUN apk add --update alpine-sdk ruby-dev postgresql-dev 

RUN gem install pgsync

WORKDIR /sync

COPY ./config .

ENTRYPOINT [ "pgsync" ]