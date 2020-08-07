#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  touch /www/install.lock
  sudo -E -u www-data ./bin/console cache:warmup --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console http:cache:warm:up --env="${APP_ENV}"
fi
