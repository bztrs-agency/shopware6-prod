#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  touch /www/install.lock
  /www/console bundle:dump --env="${APP_ENV}"
  /www/console theme:dump --env="${APP_ENV}"
  /www/console theme:compile --env="${APP_ENV}"
  /www/console assets:install --env="${APP_ENV}"
  /www/console cache:warmup --env="${APP_ENV}"
  /www/console http:cache:warm:up --env="${APP_ENV}"
fi
