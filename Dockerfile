FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR src/main/java/safa/App.java

RUN javac App.java
CMD ["java", "App"]

