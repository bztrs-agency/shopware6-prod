#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  touch /www/install.lock
  sudo -E -u www-data ./bin/console database:migrate --all --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console bundle:dump --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console theme:compile --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console assets:install --env="${APP_ENV}"
  sudo -E -u www-data ./bin/console plugin:refresh --env="${APP_ENV}"
fi
