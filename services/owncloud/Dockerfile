FROM secci/owncloud:0.2
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

RUN apt-get update && apt-get install -y openssh-server supervisor
RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/supervisor 

EXPOSE 80
EXPOSE 443

WORKDIR /tmp

ADD data/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD data/casserver.cer /tmp/casserver.cer

CMD ["/usr/bin/supervisord"]
