FROM openjdk:16-alpine3.13
RUN mkdir /app
WORKDIR /app
CMD ["Java" "-jar" "java -jar" "javaparser-maven-sample-1.0-SNAPSHOT.jar"]
