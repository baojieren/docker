FROM frolvlad/alpine-oraclejre8
MAINTAINER baojieren
VOLUME /tmp
ENV TZ=Asia/Shanghai
ADD target/docker-0.0.1-SNAPSHOT.jar /docker.jar
EXPOSE 8110
ENTRYPOINT ["java","-jar","/docker.jar"]