#!/bin/bash

/etc/init.d/mysql start &&\
    cd "/var/www/redmine-2.3.4" &&\
    bundle install &&\
    bundle exec rails server webrick -e production -b 0.0.0.0

exit 0
