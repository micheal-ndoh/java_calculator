ARG JAVA_VERSION=8
FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /usr/src/app

COPY src/ ./src/

RUN mkdir -p out

RUN javac -d out $(find src -name "*.java")

FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/out /usr/src/app

CMD ["java", "-cp", "/usr/src/app", "Calculator"]