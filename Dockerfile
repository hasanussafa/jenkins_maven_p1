FROM alpine:3.18.2
WORKDIR /src

COPY . /src/

RUN javac App.java

ENTRYPOINT [ "java", "App" ]
