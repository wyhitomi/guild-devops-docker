FROM debian:stable

MAINTAINER Wagner Hitomi (https://github.com/wyhitomi)

ADD 1GB.bin /var/www/1GB.bin
RUN chown www-data /var/www/1GB.bin \
    && chmod 756 /var/www/1GB.bin

CMD ["ls","-la","/var/www/]
