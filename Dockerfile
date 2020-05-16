FROM ruby:2.5.8

RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs           

ENV APP_ROOT /app
RUN mkdir $APP_ROOT 
WORKDIR $APP_ROOT 

COPY ./Gemfile $APP_ROOT
COPY ./Gemfile.lock $APP_ROOT

RUN bundle install

