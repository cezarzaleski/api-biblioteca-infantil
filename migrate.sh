#!/bin/bash
/code/docker/php/wait-for-it.sh database:3306 -t 60
php /var/www/arquetipo/artisan migrate
php /var/www/arquetipo/artisan db:seed
php /var/www/arquetipo/artisan swagger-lume:generate
docker-php-entrypoint php-fpm