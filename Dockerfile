ARG JAVA_VERSION=8

FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /app

COPY src/ ./src/

RUN javac -d src/out $(find src -name "*.java")

FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /app

COPY --from=builder /app/src/out /app
CMD ["java", "-cp", "/app", "Calculator"]