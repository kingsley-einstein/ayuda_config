ARG JDK_VERSION=11
FROM openjdk:${JDK_VERSION}
RUN mvnw package -DskipTests
COPY target/ayuda_config-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=production", "-jar", "app.jar"]