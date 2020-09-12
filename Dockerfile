FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/DevOps-project-1-0.0.1-SNAPSHOT.jar DevOps-project-1.jar
RUN sh -c 'touch /DevOps-project-1.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/DevOps-project-1.jar"]
EXPOSE 8083
