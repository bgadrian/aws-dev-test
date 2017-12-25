Simple (as in academic, not production quality) demo web server and deploy scripts for a simple golang app.

Requirements
* install AWS CLI and configure it
* golang installed locally
* run this:
```bash
chmod +x deploy-to-s3.sh
#this will create an S3 bucket, build the main.go and upload it
./deploy-to-s3.sh
```
* webserver binary app should be in your S3 bucket
* launch/run an EC2 linux instance with boostrap copied from ec2boostrap.sh and port 80 open
* wait and get the public IP address

It was made as a practice while watching ACloudGuru course for AWS https://acloud.guru/course/aws-certified-developer-associate/learn/ec2/