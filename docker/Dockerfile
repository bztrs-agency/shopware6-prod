ARG BASE_IMAGE=locuni/stack:nginx-php-74
FROM $BASE_IMAGE

ARG DOCKER_PATH="./docker"
ARG COPY_PATH=.

RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && \
    apt-get update && apt-get install -y --no-install-recommends nodejs zip

ADD $DOCKER_PATH/services/nginx /etc/services.d/nginx
ADD $DOCKER_PATH/services/php-fpm /etc/services.d/php-fpm
ADD $DOCKER_PATH/init /etc/cont-init.d/
ADD $DOCKER_PATH/nginx/redirects.conf /etc/nginx/conf/redirects.conf

COPY --chown=www-data:www-data $COPY_PATH /www
