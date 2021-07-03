# Serve a html page in nginx docker image
> I will use ngnix to serve a simple html page.
## Development
~~~docker
FROM ubuntu
RUN apt update
RUN apt install nginx -y
COPY index.html /var/www/html/index.nginx-debian.html
CMD ["nginx","-g","daemon off;"]
~~~
So ubuntu is used as a base image and by second layer I updated it. Third layer I installed nginx. I prepare a custom html file. As my nginx serve index.nginx-debian.html file, so i have to replace it with my custom index.html. Nginx is already configured to serve that file.

To build:
```zsh
docker build -t salekin/nginx .
```
to run container:
```bash
docker run -p 81:80 salekin/nginx
```
Now if we goto http://localhost:81/ we can see our custom html page.
```
Hi, Docker Hub!
```
