FROM nginx:1.21.3-alpine-perl

#  Global configurations
COPY ./nginx.conf /etc/nginx/nginx.conf

# Config files for each site
COPY ./sites/*.conf /etc/nginx/conf.d/

#  Proxy, SSL, and security configurations
COPY ./includes/ /etc/nginx/includes/

# Proxy SSL certificates
COPY ./ssl/ /etc/ssl/certs/nginx/
