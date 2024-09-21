FROM debian:bullseye-slim
RUN apt update -y && apt upgrade -y && apt install -y nginx
RUN apt install -y openssl && apt install -y vim
RUN apt install -y systemctl && apt install -y lsof
COPY default /etc/nginx-available/.
COPY script.sh .
RUN bash script.sh
CMD ["bash", "script.sh"]
CMD ["nginx", "-g", "daemon off;"]
