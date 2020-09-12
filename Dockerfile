FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/DevOpsRocks-0.0.1-SNAPSHOT.jar DevOpsRocks.jar
RUN sh -c 'touch /DevOpsRocks.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/DevOpsRocks.jar"]
EXPOSE 8083
