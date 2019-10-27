#!/bin/bash
# docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
# Pull latest container
docker pull jenkins/jenkins

# Setup local configuration folder
# Should already be in a jenkins folder when running this script.
export CONFIG_FOLDER=$PWD/config
mkdir $CONFIG_FOLDER
chown 1000 $CONFIG_FOLDER

# Start container
docker run --restart=always -d -p 49002:8080 \
-v $CONFIG_FOLDER:/var/jenkins_home:z \
# -e http_proxy='http://proxy.com:8080' \
# -e https_proxy='http://proxy.com:8080' \
  --name jenkins -t jenkins

docker logs --follow jenkins