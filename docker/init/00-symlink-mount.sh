#!/usr/bin/with-contenv bash
if [ "$APP_ENV" = "prod" ] ; then
  mkdir -p /mnt/nfs/custom/plugins
  mkdir -p /mnt/nfs/config/jwt
  mkdir -p /mnt/nfs/files/{private,public}
  rm -r /www/config/jwt
  rm -fr /www/public/recovery
  rm -r /www/custom/plugins
  chown -R www-data:www-data /mnt/nfs
  sudo -u www-data ln -sfn /mnt/nfs/custom/plugins /www/custom/plugins
  sudo -u www-data ln -sfn /mnt/nfs/config/jwt /www/config/jwt
  sudo -u www-data ln -sfn /mnt/nfs/files/public /www/public/public
  sudo -u www-data ln -sfn /mnt/nfs/files/private /www/public/private
else
    chown -R www-data:www-data /www/var/cache
fi
