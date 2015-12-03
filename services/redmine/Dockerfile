FROM secci/redmine:0.7
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor

EXPOSE 3000

WORKDIR /tmp

ADD data/start.sh /tmp/start.sh
ADD data/casserver.cer /tmp/casserver.cer
ADD data/redmine_cas /var/www/redmine-2.3.4/plugins/redmine_cas

CMD bash /tmp/start.sh
