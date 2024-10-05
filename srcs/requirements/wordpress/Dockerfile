FROM debian:bullseye-slim
RUN apt update -y && apt upgrade -y && apt install php-fpm -y
RUN apt install -y vim
RUN echo "set nu\nset mouse=a" >> ~/.vimrc
RUN mkdir -p /run/php
COPY www.conf /etc/php/7.4/fpm/pool.d/www.conf
CMD ["php-fpm7.4", "-F"]