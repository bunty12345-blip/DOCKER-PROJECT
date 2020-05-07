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

Before building an image if want some configuration that needs to be present in the image. Inside the image we need to install Apache 
web server image the command to install that image is

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
  
  Given below is the link of my webserver downloaded in docker hub:
  
  https://hub.docker.com/r/bunty12345/webserver
  
  OR
  
  docker pull bunty12345/webserver
  
  The last link can be used to pull my image webserver in your own linux OS in docker container and launch your new os from my image
  
  Also I have included the apache webserver how to setup and  run as additional topic to my project .
  
  How to configure run write code and view in linux and windows your webpages using html code that I have done and configured.
  
  Also I have pulled mysql and wordpress images into my docker container and mounted volume given storage to mysql container similar 
  
  like  a  pendrive mount so that even if the OS environment gets crashed my mysql backup can relaunch my database server within some 
  
  minutes and save a lot of time. I have created a simple empty database using mysql image where later on I can add or remove data as 
  
  per my choice.
  
  Also I have included  and shown that how to setup Jenkins software on top of Docker container and how to access the site in Docker and 
  
  how to access the same that I view from linux OS same site view in my windows OS  or my mobile phone or anywhere connected in the 
  
  world I can view my site it will run until I stop my jenkins site from docker container  OS running on top of linux OS  or  change my 
  
  network adapter from bridge adapter network to NAT network.

  In addition to this I have developed a virus code .bat extension file which I have used in one of the new launched docker container 
  
  and that container got shut down and crashed and freezed while other containers were running successfully parallely used here the 
  
  concept of multi threading and showed how quickly can one launch a new webserver upon its OS getting crashed and terminated and used 
  
  mounted file part from storage and used it to deploy run the webservices fast.
  
  Also in my project I have used the concept of tunneling where I have used ngrok software and used it in linux OS and used ./ngrok http 
  
  80 to connect to the private IP to public IP convert and host our webservices from anywhere in the world till we run the ngrok cmd.
  
  Used this practical to host jenkins server and our personal webservices from mobile and another OS connect view the same site.
