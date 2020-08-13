ARG BASE_IMAGE=locuni/stack:nginx-php-74
FROM $BASE_IMAGE

ARG DOCKER_PATH="./docker"
ARG COPY_PATH=.

ADD $DOCKER_PATH/services/queue /etc/services.d/queue
ADD $DOCKER_PATH/init/00-symlink-mount.sh /etc/cont-init.d/00-symlink-mount.sh
ADD $DOCKER_PATH/init/100-init-directories.sh /etc/cont-init.d/100-init-directories.sh

COPY --chown=www-data:www-data $COPY_PATH /www
