FROM secci/openfire:0.5
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

RUN apt-get update && apt-get install -y openssh-server supervisor
RUN mkdir -p  /var/log/supervisor 
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 7777
EXPOSE 9090
EXPOSE 9091
EXPOSE 5222
EXPOSE 5223
EXPOSE 5229
EXPOSE 7443
EXPOSE 5269
EXPOSE 7070

WORKDIR /tmp


ADD data/casserver.cer /tmp/casserver.cer
CMD ["/usr/bin/supervisord"]
