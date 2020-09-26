ARG JDK_VERSION=11-jdk-alpine
FROM openjdk:${JDK_VERSION}
COPY target/ayuda_config-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=production", "-jar", "app.jar"]