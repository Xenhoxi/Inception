FROM debian:11

RUN apt-get -y update && apt-get -y install nginx
RUN apt-get -y install vim

COPY conf/default etc/nginx/sites-available/default

EXPOSE 443/tcp

CMD ["nginx", "-g",  "daemon off;"]
