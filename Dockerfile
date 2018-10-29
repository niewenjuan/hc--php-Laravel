FROM 100.125.5.235:20202/op_svc_servicestage/php:7-apache-int

RUN a2enmod rewrite \
    && mkdir -p /app \
    && rm -fr /var/www/html \
    && ln -s /app/public /var/www/html

WORKDIR /app
COPY . /app
RUN chown -R www-data:www-data /app
