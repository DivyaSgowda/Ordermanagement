FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/ordermanagement-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8500
ENV JAVA_OPTS=""
RUN sh -c "touch ordermanagement-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "ordermanagement-0.0.1-SNAPSHOT.jar" ]
# docker file to create docker image for ordermanagement
