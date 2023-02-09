#!/bin/bash

envsubst '$NGINX_ROOT $NGINX_FPM_HOST $NGINX_FPM_PORT' < /etc/nginx/fpm.tmpl > /etc/nginx/conf.d/default.conf
exec nginx -g "daemon off;"

#!/bin/bash
if [ ! -f "vendor/autoload.php" ]; then
composer install --no-progress --no-interaction
fi
if [ ! -f ".env" ]; then
	echo "Creating env file for env $APP_ENV"
	cp .env.example .env
else
	echo "env file exists"
fi
role=${CONTAINER_ROLE:-myapp}

if [ "$role" = "myapp" ]; then
     php artisan migrate
     php artisan key:generate
     php artisan config:clear
     php artisan route:clear
     php artisan serve --port=$PORT --host=0.0.0.0 --env=.env
     exec docker-php-entrypoint "$@"

elif [ "$role" = "queue" ]; then
     echo "Running the queue ... "
     php /var/www/artisan queue:work --verbose --tries=3 timeout=180
fi