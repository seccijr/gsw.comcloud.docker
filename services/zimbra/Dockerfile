FROM secci/zimbra:base
MAINTAINER Carlos I. Pérez Sechi <secci.jr@gmail.com>

EXPOSE 22
EXPOSE 25
EXPOSE 456
EXPOSE 587
EXPOSE 110
EXPOSE 143
EXPOSE 993
EXPOSE 995
EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8443
EXPOSE 7071
EXPOSE 9071

WORKDIR /tmp

RUN if [ ! -d /tmp/zcs ]; then mkdir /tmp/zcs; fi;
ADD data/start.sh /tmp/zcs/start.sh
ADD data/casserver.cer /tmp/casserver.cer

CMD ["/bin/bash", "/tmp/zcs/start.sh", "-d"]
