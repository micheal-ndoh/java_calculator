ARG JAVA_VERSION=8
FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /app

COPY src/ ./src/
COPY MANIFEST.MF ./MANIFEST.MF

RUN mkdir bin

RUN javac -d bin $(find src -name "*.java")

RUN jar cfm Calculator.jar MANIFEST.MF -C bin .

FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /app

COPY --from=builder /app/Calculator.jar /app/Calculator.jar

CMD ["java", "-jar", "/app/Calculator.jar"]