FROM ubuntu:14.04
MAINTAINER "Korea-JIN <jinboy71@gmail.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -y
COPY test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
