FROM openjdk:17-alpine
WORKDIR /work
COPY . /work/
CMD ["./gradlew", "build"]
ARG JAR_FILE_PATH=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE_PATH} app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
