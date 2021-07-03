FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY index.html /var/www/html/index.nginx-debian.html
CMD ["nginx","-g","daemon off;"]
