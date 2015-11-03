FROM secci/redmine:0.6
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

EXPOSE 3000

WORKDIR /tmp
COPY puppet.pp /tmp/
CMD puppet apply puppet.pp
