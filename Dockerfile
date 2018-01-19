FROM nginx
RUN apt-get update -qq && apt-get -y install apache2-utils
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY transitland.conf /etc/nginx/conf.d/transitland.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
