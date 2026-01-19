# Use official Eclipse Temurin Java 17 image
FROM eclipse-temurin:17-jdk

# Copy the built JAR
COPY target/*.jar app.jar

# Run the JAR
CMD ["java", "-jar", "app.jar"]


