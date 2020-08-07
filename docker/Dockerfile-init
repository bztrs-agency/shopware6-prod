ARG BASE_IMAGE=locuni/stack:nginx-php-74
FROM $BASE_IMAGE

ARG DOCKER_PATH="./docker"
ARG COPY_PATH=.

RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && \
    apt-get update && apt-get install -y --no-install-recommends nodejs zip

ADD $DOCKER_PATH/init/00-symlink-mount.sh /etc/cont-init.d/00-symlink-mount.sh
ADD $DOCKER_PATH/init/10-set-session-handler.sh /etc/cont-init.d/10-set-session-handler.sh
ADD $DOCKER_PATH/init/50-init.sh /etc/cont-init.d/50-init.sh
ADD $DOCKER_PATH/init/100-init-directories.sh /etc/cont-init.d/100-init-directories.sh

COPY --chown=www-data:www-data $COPY_PATH /www
