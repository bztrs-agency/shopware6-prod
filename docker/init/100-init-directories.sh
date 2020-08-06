#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  chown www-data:www-data -R /www/var
fi
