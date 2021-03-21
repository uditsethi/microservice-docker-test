# microservice-docker-test

Docker commands added for deployment of docker image.

docker build -t docker-project-test . :-- Build a docker image project according to docker file provided in project

docker run -p 9090:8080 docker-project-test :-- Run docker application in local docker image present <8080:project-port <--> 9090:docker-exposed-port>

docker tag docker-project-test uditsethi2408/microservice-test-repo :-- Tag the local docker projevt ro remote repository present <'uditsethi2408':dockerhubid >

docker push uditsethi2408/microservice-test-repo :- Push the docker image to remote docker repository [docker.io/uditsethi2408/microservice-test-repo]

docker pull uditsethi2408/microservice-test-repo:<tag-name> :-- Pull the docker image from remote to local 

docker run --name=test-container -p 9091:8080 uditsethi2408/microservice-test-repo :-- Run remote Docker image with custom container name

docker images :-- Check images present in docker hub

docker rmi -f uditsethi2408/microservice-test-repo :-- Forcefully remove the docker image from an attched container

docker rm <container-name> :-- Remove docker conatiner

docker rmi <image-name>:-- Remove the docker image from local repository

docker stop <conatiner-name> :-- Stop docker conatiner

docker container ls :- List all the docker containers running



////////////////////////////////Jenkins setup onec2\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ 




sudo yum update –y

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
	
	
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
	
sudo yum upgrade
	
sudo yum install jenkins java-1.8.0-openjdk-devel -y
	
sudo systemctl daemon-reload
	
sudo systemctl start jenkins
	
sudo systemctl status jenkins
	
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
