FROM ubuntu:18.04 as files
LABEL maintainer='ky zerbo m'
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install git -y
RUN rm -Rf /usr/share/nginx/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html


FROM nginx:stable-alpine3.17-slim
LABEL maintainer='ky zerbo m'
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
