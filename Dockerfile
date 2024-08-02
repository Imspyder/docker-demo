# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the local JAR file to the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Optionally, you can specify the port on which the application will run
#EXPOSE 8080
