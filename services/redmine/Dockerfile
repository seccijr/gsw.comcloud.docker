FROM secci/redmine:0.6
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

EXPOSE 3000

WORKDIR /tmp

ADD manifest.pp /tmp/manifest.pp
ADD data/casserver.cer /tmp/casserver.cer

CMD puppet apply manifest.pp
