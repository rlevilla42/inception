FROM debian:bullseye-slim
RUN apt update -y && apt upgrade -y && apt install php-fpm -y
RUN mkdir -p /run/php
CMD ["php-fpm7.4", "-F"]
