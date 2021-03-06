FROM nginx:1.16.1-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

COPY build .

CMD nginx -g 'daemon off;'
