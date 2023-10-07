FROM maven:3.8.3-openjdk-17-slim

COPY . ./

COPY docker/application.properties src/main/resources/application.properties

RUN mvn -DskipTests=true clean package

EXPOSE 8080

CMD ["java", "-jar", "target/social-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=local"]
#CMD ["java", "-jar", "target/social-0.0.1-SNAPSHOT.jar", "-Dspring.profiles.active=prod"]
