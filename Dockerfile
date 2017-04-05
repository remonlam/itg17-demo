#FROM httpd:2.4.23-alpine
#MAINTAINER Remon Lam [remon@containerstack.io]


#CMD hostname > /usr/share/nginx/html/index.html ; nginx -g "daemon off;"
#CMD sed -i s/HOSTNAME/$hostname/g /usr/share/nginx/html/index.html

FROM nginx:1.10
COPY index.html /usr/share/nginx/html/
CMD hostname >> /usr/share/nginx/html/index.html ; nginx -g "daemon off;"
