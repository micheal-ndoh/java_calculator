ARG JAVA_VERSION=8
FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /build

COPY . ./

COPY src/ ./src/

RUN mkdir -p classes

RUN javac -d classes $(find src -name "*.java")

FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /app

COPY --from=builder /build/classes /app

CMD ["java", "-cp", "/app", "Calculator"]
