#!/usr/bin/with-contenv bash
if [ "$APP_ENV" != "dev" ] ; then
  touch /www/install.lock
  /www/console bundle:dump --env="${APP_ENV}"
  /www/console theme:dump --env="${APP_ENV}"
  /www/console cache:warmup --env="${APP_ENV}"
  /www/console http:cache:warm:up --env="${APP_ENV}"
fi
