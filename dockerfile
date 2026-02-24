FROM ubuntu:latest
RUN apt update && apt install nginx -y
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
WORKDIR /var/www/html
