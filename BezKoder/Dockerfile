# First stage: Build stage
FROM maven:3.8.1-openjdk-8-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src/ /app/src/
RUN mvn package -DskipTests

# Extract the application name from pom.xml
RUN mvn help:evaluate -Dexpression=project.name -q -DforceStdout > /tmp/appname.txt

# Second stage: Run stage
FROM openjdk:8-jre-slim
WORKDIR /app
COPY --from=build /app/target/*.jar ./
COPY --from=build /tmp/appname.txt .

EXPOSE 8080

# CMD ["sh", "-c", "java -jar $(cat /tmp/appname.txt).jar"]
CMD ["sh", "-c", "java -jar $(cat /tmp/appname.txt).jar", "--spring.profiles.active=postgresql"]
