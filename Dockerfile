ARG JAVA_VERSION=17
FROM eclipse-temurin:${JAVA_VERSION}-jdk-alpine as builder

WORKDIR /usr/src/app

COPY src/ ./src/
COPY build/*.class ./ 


RUN javac src/Calculator.java -d out

FROM eclipse-temurin:${JAVA_VERSION}-jre-alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/out /usr/src/app

CMD ["java", "Calculator"]
