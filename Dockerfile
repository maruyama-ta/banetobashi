FROM openjdk:21-jdk-slim
ARG JAR_FILE=build/libs/banetobashi-0.0.1-SNAPSHOT.jar
#ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
