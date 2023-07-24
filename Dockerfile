FROM openjdk:8
WORKDIR jenkins_maven_p2/src/main/java/safa
/App.java

COPY . /jenkins_maven_p2/src/main/java/safa
/App.java/

RUN javac App.java

