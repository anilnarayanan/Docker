# escape=`
#Using latest nginx image
FROM nginx:latest AS ng
 
LABEL version=1.0
LABEL maintainer="anilnarayanan@hotmail.com"

EXPOSE 8080

ENV workd "/usr/share/nginx/html/"
WORKDIR $workd
#ADD ./helloworld1.txt /
COPY ./hello* $workd

#RUN apt-get update && apt-get -y install iputils-ping
