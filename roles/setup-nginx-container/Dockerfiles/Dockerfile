FROM ubuntu
RUN apt-get update -y
RUN apt-get install sudo -y
RUN apt-get install nginx -y
RUN sudo mkdir -p  /var/www/site2.com/html /var/www/site1.com/html
COPY ./conf/index1.html /var/www/site1.com/html
COPY ./conf/index2.html /var/www/site2.com/html
COPY ./conf/site1.conf /etc/nginx/conf.d
COPY ./conf/site2.conf /etc/nginx/conf.d
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
