#!/usr/bin/with-contenv bash

if [ "$APP_ENV" != "dev" ] ; then
    echo "session.save_handler = redis" > /usr/local/etc/php/conf.d/sessions.ini
    echo "session.save_path = \"${REDIS_SERVICE_PORT}?database=2\"" >> /usr/local/etc/php/conf.d/sessions.ini
fi
