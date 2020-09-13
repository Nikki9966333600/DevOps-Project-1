FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/devopsrocks-1.0-SNAPSHOT.war devopsrocks.war
RUN sh -c 'touch /devopsrocks.war'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/devopsrocks.war"]
EXPOSE 8083
