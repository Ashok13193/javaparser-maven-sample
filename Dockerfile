FROM openjdk:8-jre-alpine
RUN mkdir /app
WORKDIR /app
EXPOSE 8080
CMD ["java -jar javaparser-maven-sample-1.0-SNAPSHOT.jar"]
