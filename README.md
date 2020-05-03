# DOCKER-PROJECT
Application new ideas and solution approach for docker
LAUNCHING BUILD WEBSERVER AND HOST THE WEBSERVER OWN IMAGE ON DOCKER HUB
THINGS USED TO BUILD THE PROJECT
1. Docker hub account
2. Docker File
3. Html Language use for website 
4.RedHat Linux 8 Operating System
WHY USE DOCKER CONTAINER  TO BUILD THE WEBSERVER??
Docker is an opensource light weight container which consumes very less amount of RAM and CPU about 15 to 20 MB it takes for installation. Using docker container we can launch our webservices very fast and due to its light weight it is favourable over virtualisation technology. We can launch install boot and run and start the docker container services in just 1 second. Inside docker container we can launch and run multiple OS at a time as the size of the containers are very small and the system does not hang up when parallel containers are running.
DOCKER FILE BASIC COMMANDS:
1. Maintainer : 
This command is used to give the information about the author or manager who is managing this image.
MAINTAINER Newstar Corporation
2. RUN:
Before building an image if want some configuration that needs to be present in the image. Inside the image we need to install Apache web server image the command to install that image is
RUN yum –y install httpd
3. COPY:
This command is used to copy a file from host os to docker container
COPY index.html /var/www/html
4. EXPOSE :
 This command is used to specify the port number in which the container is running its process. Anybody can come from outside and connect to this port. Apache webserver is launched at port 80 by default that is why we need to expose container at port 80.
 EXPOSE 80
 5. CMD :
 To run a command as soon as container is launched. CMD command is different from RUN because RUN is used at the time of building an image and CMD used to run command when container is started.
 /usr/sbin/httpd-
 This command is used to start the web server
 -DFOREGROUND:
  This is not a docker command this is http server argument which is used to run web server in background. If we do not use this argument the server will start and then it will stop.
  CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]
  
