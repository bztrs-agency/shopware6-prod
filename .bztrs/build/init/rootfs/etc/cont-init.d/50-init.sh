#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  touch /www/install.lock
  /www/console database:migrate --all --env="${APP_ENV}"
fi
