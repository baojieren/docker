#FROM frolvlad/alpine-oraclejre8
FROM maven:3.5.4-alpine
ADD . /app
WORKDIR /app/
RUN mvn clean package
EXPOSE 8110
ENTRYPOINT java -jar target/docker-1.jar