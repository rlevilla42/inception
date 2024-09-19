FROM debian:bullseye-slim
RUN apt update -y && apt upgrade -y && apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
