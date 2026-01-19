# OLD: FAIL HO RAHI THI
FROM openjdk:17

# NEW: WILL WORK
FROM eclipse-temurin:17-jdk
COPY target/*.jar app.jar
CMD ["java","-jar","app.jar"]
