FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/devopsrocks-0.0.1-SNAPSHOT.jar devopsrocks.jar
RUN sh -c 'touch /devopsrocks.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/devopsrocks.jar"]
EXPOSE 8083
