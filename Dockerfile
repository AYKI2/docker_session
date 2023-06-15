FROM openjdk:19 AS build
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests


FROM openjdk:19
WORKDIR /app
COPY --from=build /app/target/docker_session-0.0.1-SNAPSHOT.jar .
EXPOSE 2024
CMD ["java", "-jar", "docker_session-0.0.1-SNAPSHOT.jar"]