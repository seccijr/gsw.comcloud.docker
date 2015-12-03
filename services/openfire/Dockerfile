FROM secci/openfire:0.8
MAINTAINER Carlos I. Pérez Sechi <ciperezs@generalsw.com>

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

ADD data/start.sh /tmp/start.sh
ADD data/casserver.cer /tmp/casserver.cer

CMD /bin/bash /tmp/start.sh -d
