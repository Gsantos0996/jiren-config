FROM openjdk:8-jdk-alpine

RUN apk --no-cache add curl

RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 7184

ENTRYPOINT ["java","-jar","/app.jar"]
