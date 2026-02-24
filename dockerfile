From ubuntu:latest
RUN apt update && apt install nginx -y
COPY ./Project-repo/index.html /var/www/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]