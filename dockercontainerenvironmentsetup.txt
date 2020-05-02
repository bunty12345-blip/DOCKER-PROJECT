Setup of docker container Environment:
Step 1: First install yum from Redhat DVD iso file . Do yum setup inside the base Redhat System.
Step 2: Create docker repository in yum configuration file
# gedit docker.repo
Step 3: Inside the text file copy the downloaded link of docker to access
[docker]
baseurl = https://download.docker.com/linux/centos/7/x86_64/stable/Packages/
gpgcheck = 0
Step 4 : Install Docker container using YUM command
# yum install docker-ce --nobest
Step 5: Start docker services
# Systemctl start docker