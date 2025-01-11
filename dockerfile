# Use OpenJDK 21 as the base image
FROM eclipse-temurin:21-jdk

# Set the working directory
WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*

# Copy the pom.xml and resolve dependencies
COPY pom.xml /app/
RUN mvn dependency:go-offline -B

# Copy the application source code
COPY src /app/src

# Build the project
RUN mvn clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/your-app.jar"]
