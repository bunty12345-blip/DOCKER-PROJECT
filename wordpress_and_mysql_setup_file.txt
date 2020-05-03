PULL WORDPRESS MY SQL IMAGES and work on them :
# docker pull wordpress
# docker  pull wordpress:5.1.1-php7.3-apache
# docker images | grep word
It will show the two images downloaded along with their file size
# docker pull mysql
# docker pull  mysql:5.7
# docker  images |  grep  mysql
Show the mysql images along with file size and version
Launch a new  container OS from mysql image and run it 
# docker run  -it  mysql:5.7 
But  for running mysql webserver they require root password of mysql so we have to set the mysql user name database root password
# docker  run  -it  -e  MYSQL_ROOT_PASSWORD=rootbantu   mysql:5.7
# docker ps
It shows that new container OS mysql server is currently running
# docker inspect 86 | grep IP 
Take the initials of the container ID  and find  their ip address gateway of the new container OS
In base redhat container launch mysql server using yum command
# yum install mysql
# which mysql 
This command find the path where mysql software file is currently stored
/usr/bin/mysql 
# rpm -q f  /usr/bin/mysql
This show the software version file of mysql installed
mysql-8.0.13-1.module+el8+2558+036183ec.x86_64
Now start the mysql server with the username and password
# mysql  -h  172.17.0.2  -u  root  -predhat
mysql> show databases;
Database 
information_schema mysql
performance_schema sys
4 rows in set
mysql> exit;
Bye
# docker  history  mysql:5.7
It shows the history of all the software files of mysql version:5.7
# docker  run  -dit  -e MYSQL_ROOT_PASSWORD=********  -e  MYSQL_USER=sujay  -e  MYSQL_PASSWORD=******  -e  MYSQL_DATABASE=mydb   mysql:5.7
Set up the username and password for mysql root account and database account
# mysql  -h  172.17.0.4   -u  sujay  -predhat
Login to the mysql root account server
mysql> show databases;
Database 
information_schema mydb
2 rows in set
mysql> use mydb;
Database changed
mysql> show tables;
Empty set
Now create a volume storage for mysql software file
# docker  volume  create  --help
Ask for help option to get all the available options
Usage : docker volume create [OPTIONS ]  [VOLUME ]

Create a volume  

Options: 
 
-d     -- driver  string   Specify volume  driver name (default "local")
         --label  list          Set  metadata   for a volume
-o      --opt  map           Set    driver    specific  options (default map [])
# docker  volume create mysql_storage 
mysql_storage 
Created mysql_storage 
# docker  volume ls | grep mysql
See that storage is allocated to mysql file or not
local        mysql_storage
# docker volume  create  wp_storage
Create another storage space name as wp_storage
# docker  volume  ls  | grep  wp
See that storage is allocated or not
# docker  run  -dit   -e WORDPRESS_DB_HOST=dbos  -e WORDPRESS_DB_USER=sujay  -e  WORDPRESS_DB_PASSWORD=redhat -e  WORDPRESS_DB_NAME=mydb  -v  wp_storage:/var/www/html   --name   wpos  --link  dbos  wordpress:5.1.1-php7.3-apache
Mount to storage file
# docker pull wordpress:5.1.1 
Pull wordpress image version 5.1.1
