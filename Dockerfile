FROM alpine:3.18.2
WORKDIR /src/main/java/safa/App.java

COPY . /src/main/java/safa/App.java

RUN javac App.java

ENTRYPOINT [ "java", "App" ]
