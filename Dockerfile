
FROM ubuntu:18.04

FROM ruby:2.5.0

RUN apt-get update && apt-get install -y ruby ruby-dev ruby-bundler build-essential
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /altoeditor

RUN gem2.5 install 


# cropper tool

RUN apt-get install libmagick-dev

RUN gem2.5 install sinatra

RUN gem2.5 install rmagick

# json_alto

RUN gem2.5 install hpricot

RUN gem2.5 install json


# install apche for website part

RUN apt install apache2

RUN ln -s /var/www/altoeditor /altoeditor

COPY /altoeditor/example.xml /var/www/altoeditor


# run cropper & json_alto

RUN ruby2.5 -Icropper/ cropper/web.rb -p3000

RUN ruby2.5 -I../cropper json_alto/web.rb -p3002

RUN apachectl start

RUN echo "Maybe done, try..."


