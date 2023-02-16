# syntax=docker/dockerfile:1
FROM ruby:3.1.3-alpine
RUN apk update \
    && apk add --upgrade --no-cache \
    build-base \
    linux-headers \
    mysql-dev \
    yaml-dev \
    nodejs \
    yaml \
    ruby-json \
    ruby-dev \
    ruby-io-console \
    tzdata \
    ruby-nokogiri \
    libxml2-dev \
    libxslt-dev \
    gcompat \
    && gem install bundler -v 2.2.32 \
    && gem install nokogiri
WORKDIR /exp
COPY Gemfile /exp/Gemfile
COPY Gemfile.lock /exp/Gemfile.lock
RUN bundle lock --add-platform x86_64-linux
RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails","s","-b","0.0.0.0","-p","3000"]