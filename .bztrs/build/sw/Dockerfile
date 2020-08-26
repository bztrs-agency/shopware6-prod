ARG BASE_IMAGE=locuni/stack:nginx-php-74
FROM $BASE_IMAGE

ARG COPY_PATH=.

COPY --chown=www-data:www-data $COPY_PATH /www
ADD --chown=www-data:www-data .bztrs/build/sw/rootfs /

RUN rm -fr /www/.bztrs
