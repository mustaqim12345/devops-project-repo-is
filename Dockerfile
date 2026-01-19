# OLD: FROM openjdk:17
FROM eclipse-temurin:17-jdk

COPY target/*.jar app.jar
CMD ["java","-jar","app.jar"]
