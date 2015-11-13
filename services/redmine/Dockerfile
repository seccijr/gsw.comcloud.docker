FROM secci/redmine:0.6
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

RUN apt-get update && apt-get install -y openssh-server supervisor
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 3000

WORKDIR /tmp

ADD data/casserver.cer /tmp/casserver.cer

CMD ["/usr/bin/supervisord"]
