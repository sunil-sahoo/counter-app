FROM nginx:1.19-alpine

WORKDIR /usr/share/nginx/html

COPY build/ /usr/share/nginx/html

RUN  sed  -i '11 i try_files $uri $uri/ /index.html;' /etc/nginx/conf.d/default.conf

EXPOSE 80
