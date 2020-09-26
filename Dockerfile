ARG MVN_VERSION=3.6.3-openjdk-11
FROM maven:${MVN_VERSION} as MvnBuild
COPY src ./src
COPY mvnw* ./
COPY pom.xml ./

FROM openjdk:11
COPY --from=MvnBuild . .
RUN mvn clean package -DskipTests
RUN dir target
COPY target/ayuda_config-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=production", "-jar", "app.jar"]
