FROM ubuntu:18.04 as files
LABEL maintainer='ky zerbo m'
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install git -y
RUN mkdir /opt/files
RUN git clone https://github.com/diranetafen/static-website-example.git /opt/files/


FROM nginx:stable-alpine3.17-slim
LABEL maintainer='ky zerbo m'
COPY --from=files /opt/files/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
