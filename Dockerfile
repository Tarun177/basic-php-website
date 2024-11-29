FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y apache2
RUN apt-get install -y php libapache2-mod-php

ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND


Cafe-static docker

FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y apache2
COPY . /var/www/html/

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND
