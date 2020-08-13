ARG BASE_IMAGE=locuni/stack:nginx-php-74
FROM $BASE_IMAGE

ADD --chown=www-data:www-data rootfs /

RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash - && \
    apt-get update && apt-get install -y --no-install-recommends nodejs zip
