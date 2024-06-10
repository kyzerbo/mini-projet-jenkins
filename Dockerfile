FROM nginx:1.21.1
LABEL maintainer="Ky zerbo zerbomohamed007@ yahoo.fr"
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD nginx -g 'daemon off;'
