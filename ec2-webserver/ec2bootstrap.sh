#!/bin/bash
yum update -y
#put this script in the Bootstrap of you EC2 creation process
#demo script - it is not good for a real production env

#make sure the EC2 instance have S3 read permission (Role)
#make sure the EC2 has port 80 (HTTP) open (security group)
aws s3 cp s3://gowebserver/webserver .
chmod +x webserver #make it executable
./webserver & #run it in background

