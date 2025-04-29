ARG JAVA_VERSION=8
FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /app

COPY src/ ./src/

RUN javac -d src/out $(find src -name "*.java")

CMD ["java", "-cp", "/app", "Calculator"]