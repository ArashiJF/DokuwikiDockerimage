FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade
RUN apt-get -y install apache2
RUN apt-get install -y php
RUN apt-get install -y php7.0-xml libapache2-mod-php

EXPOSE 80

RUN rm /var/www/html/index.html
COPY --chown=www-data:www-data ./dokuwiki/ /var/www/html

CMD apache2ctl -D FOREGROUND
