FROM openjdk:11
COPY . /usr/src/myapp
WORKDIR src/main/java/safa/App.java
RUN javac Main.java
CMD ["java", "Main"]

