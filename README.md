# microservice-docker-test

Docker commands added for deployment of docker image.

docker build -t docker-project-test . :-- Build a docker image project according to docker file provided in project

docker run -p 9090:8080 docker-project-test.jar :-- Run docker application in local docker image present

docker run --name=test-container -p 9091:8080 uditsethi2408/microservice-test-repo :-- Run remote Docker image with custom container name

docker images :-- Check images present in docker hub

docker rmi -f uditsethi2408/microservice-test-repo :-- Forcefully remove the docker image from an attched container

docker tag docker-project-test uditsethi2408/microservice-test-repo :-- Tag the local docker projevt ro remote repository present

docker push uditsethi2408/microservice-test-repo :- Push the docker image to remote docker repository

docker rmi :-- Remove the docker image from local repository

docker stop test-container :-- Stop docker conatiner

docker container ls :- List all the docker containers running




