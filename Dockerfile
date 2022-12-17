FROM openjdk:8-jre
ADD target/spring-boot-mongo-1.0.jar app.jar
EXPOSE 8030
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
