FROM nginx:latest
MAINTAINER koka <koka.code@gmail.com>
COPY ./conf.d/* /etc/nginx/conf.d/

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf

