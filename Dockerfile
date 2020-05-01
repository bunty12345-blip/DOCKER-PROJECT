FROM centos:latest
MAINTAINER NewStarCorporation
RUN  yum -y install httpd
COPY  SUJAYSHANKARBISWAS.html /var/www/html/
CMD  ["/usr/sbin/httpd", "-D", "FOREGROUND"] 
EXPOSE  80
