FROM openjdk:8-jre
# #Required for starting application up.
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/app.jar
WORKDIR $PROJECT_HOME
CMD ["java" ,"-jar","./app.jar"]
