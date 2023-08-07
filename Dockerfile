FROM openjdk:11

# Set the working directory
WORKDIR /usr/src/myapp

# Copy the entire project into the container
COPY . .

# Compile the Java code
RUN javac src/main/java/safa/App.java

# Set the entry point for the container
CMD ["java", "safa.App"]
