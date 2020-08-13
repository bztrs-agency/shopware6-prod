#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  touch /www/install.lock
  /www/console cache:warmup --env="${APP_ENV}"
  /www/console http:cache:warm:up --env="${APP_ENV}"
fi
