FROM nginx:latest
LABEL maintenair="Ky zerbo  zerbomohamed001@yahoo.fr"
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 80
CMD [ "nginx","-g","daemon off;" ]
