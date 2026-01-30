# Step 1: Use an official JDK as the base image
FROM openjdk:8u151-jdk-alpine3.7

# Step 2: Set an environment variable for working directory
ENV APP_HOME /usr/src/app

# Step 3: Set a working directory inside the container
WORKDIR $APP_HOME

# Step 4: Copy the application JAR file into the container
COPY target/shopping-cart-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

# Step 4: Expose the application port
EXPOSE 8070

# Step 5: Run the JAR file
ENTRYPOINT exec java -jar app.jar