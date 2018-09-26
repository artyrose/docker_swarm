FROM php:5.3-fpm-jessie

#ADD php.ini /usr/local/etc/php/php.ini
#ADD php-fpm.conf /usr/local/etc/php-fpm.conf
#ADD zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf

ENTRYPOINT ["/usr/local/sbin/php-fpm"]
CMD ["-c", "/usr/local/etc/php/php.ini", "-y", "/usr/local/etc/php-fpm.conf", "-F"]
