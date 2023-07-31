FROM openjdk:8
WORKDIR src/main/java/safa/App.java
COPY . /src/main/java/safa/App.java/
RUN javac src/main/java/safa/App.java
ENTRYPOINT [ "java", "App"]

