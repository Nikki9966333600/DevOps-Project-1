FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/devOpsRocks-0.0.1-SNAPSHOT.jar devOpsRocks.jar
RUN sh -c 'touch /devOpsRocks.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/devOpsRocks.jar"]
EXPOSE 8083
