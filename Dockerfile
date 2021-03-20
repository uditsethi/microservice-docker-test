FROM openjdk:8
EXPOSE 8080
ADD target/docker-project-test.jar docker-project-test.jar
ENTRYPOINT ["java","-jar","/docker-project-test.jar"]