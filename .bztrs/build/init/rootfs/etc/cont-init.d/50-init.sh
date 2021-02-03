#!/usr/bin/with-contenv bash
if [ "$APP_ENV" != "dev" ] ; then
  touch /www/install.lock
  /www/console database:migrate --all --env="${APP_ENV}"
fi
