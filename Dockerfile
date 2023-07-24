FROM openjdk:8
WORKDIR /src

COPY . /src/

RUN javac App.java

ENTRYPOINT [ "java", "App" ]
