FROM secci/owncloud:0.6
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

EXPOSE 80
EXPOSE 443

WORKDIR /tmp

ADD manifest.pp /tmp/manifest.pp
ADD data/start.sh /tmp/start.sh
ADD data/casserver.cer /tmp/casserver.cer

CMD ["/bin/bash", "/tmp/start.sh", "-d"]
