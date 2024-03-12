FROM debian:11

RUN apt-get -y update && apt-get upgrade && apt-get -y install nginx
RUN apt-get -y install curl
RUN mkdir -p /etc/nginx/ssl
RUN apt-get install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=Alsace/L=Mulhouse/O=42/OU=42/CN=ljerinec.42.fr/UID=ljerinec"

COPY ./requirements/nginx/conf/default ./etc/nginx/sites-available/default

EXPOSE 443/tcp

CMD ["nginx", "-g",  "daemon off;"]
