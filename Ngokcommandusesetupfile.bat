Steps for using ngrock software and apply to tunneling to convert private IP to public IP
Step 1: go to desktop directory where you have copy the ngrock zip file:
[root@localhost]# cd Desktop
Step 2: Unzip the file:
[root@localhost]# unzip ngrock-stable-linux-amd64.zip
 Step 3: open any website for view 
[root@localhost]# cd
Step 4: go to html folder for write code
[root@localhost]# cd /var/www/html
[root@localhost]# cat >> index.html
Write some code here for display in the webpage
Step 5: Again come back to desktop folder
[root@localhost]# cd 
[root@localhost]# cd Desktop
Step 6 : type the below cmd for access through to session status session expires version webinterface forwarding port and http requests
[root@localhost]# ./ngrok http 80
Step 7: In the above page select the forwarding link and copy paste it  on any where linux OS mobile phone Windows OS with extension "URl/filename.html" for accessing .
And your webpage is displayed all over the world till the time you run ngrok command
