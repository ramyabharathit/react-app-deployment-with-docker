#!/bin/bash

#login into DockerHub:


#stopping existing container:
docker stop react
docker rm react

#building a image:
docker build -t react-ci/cd .

#running a container from the created image:
docker run -d -it --name react -p 80:80 react-ci/cd

#pushing the image to dockerhub:
docker tag react-ci/cd ramyabharathi1804/react-app:ci-cd
docker push ramyabharathi1804/react-app:ci-cd
