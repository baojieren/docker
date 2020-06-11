#FROM frolvlad/alpine-oraclejre8
FROM maven:3.5.4-alpine
MAINTAINER baojieren
VOLUME /tmp
RUN mvn clean package -Dmaven.test.skip=true
ENV TZ=Asia/Shanghai
ADD . /app
WORKDIR /app/
EXPOSE 8110
ENTRYPOINT java -jar target/docker-1.jar -c