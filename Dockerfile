FROM ubuntu:18.04
# Apdate repozitory
RUN apt-get -y update
# Install nginx 
RUN apt-get install -y nginx 
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN sed -i "0,/nginx/docker-nginx/i" /usr/share//nginx/html/index.html
CMD [ "nginx" ]
