FROM nginx:1.10
MAINTAINER Remon Lam [remon@containerstack.io]

COPY index.html /usr/share/nginx/html/
CMD hostname >> /usr/share/nginx/html/index.html ; nginx -g "daemon off;"
