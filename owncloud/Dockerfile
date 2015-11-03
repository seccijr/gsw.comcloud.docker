FROM secci/owncloud:0.2
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

EXPOSE 80
EXPOSE 443

WORKDIR /tmp
COPY puppet.pp /tmp/
COPY start.sh /tmp/

CMD ["/bin/bash", "/tmp/start.sh", "-d"]
