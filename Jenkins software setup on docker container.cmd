Jenkins Installation in Docker Container:
Prerequisite : We need to have docker installed in our system and in my above earlier files I have written the steps for installing docker container on top of base redhat OS.
Step 1: Starts docker services:
# systemctl start docker 

Step 2: Pull Jenkins image from docker hub using the following cmd on docker container:
 
# docker  pull jenkins/jenkins:lts

Step 3:  Now after downloading the jenkins image on docker container run the jenkins image

# docker  run  --detach  --publish  8081:8181  --volume  jenkins_home:/var/jenkins_home -name jenkins jenkins/jenkins:lts

Step 4 : Open our firefox browser and type:
http://localhost:8080/

Step 5:  when we run this command "http://localhost:8080/" they ask for initial password so in docker we can get the  password using trick :
Go to terminal  and  copy and paste the command that is written here on the browser page

# docker  exec  jenkins  cat/var/jenkins_home/secrets/initialAdminPassword
 output - ce202e2fca554df4bae6d50da6022106

Now press continue and set up your Jenkins Dashboard

Note: after log in into jenkins dashboard  we can change our password by going into the  
manage jenkins ---> manage users ---> settings button --> change password and then confirm it by saving and apply the changes.



