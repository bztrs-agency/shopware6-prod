#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  sudo -E -u www-data ./bin/console database:migrate --all --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console bundle:dump --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console theme:compile --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console assets:install --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console cache:warmup --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console http:cache:warm:up --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console plugin:refresh --env="${APP_ENV}"
fi
