FROM nginx:latest
LABEL maintainer="ky zerbo"
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]
