FROM debian:bullseye-slim
RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y
RUN mkdir -p /run/mysqld/
RUN chown -R mysql:root /run/mysqld
RUN apt install -y vim
RUN apt install -y systemctl
RUN echo "set nu\nset mouse=a"