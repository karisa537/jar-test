FROM adoptopenjdk/openjdk11:jdk-11.0.2.9-slim

LABEL maintainer="nyundobaya1@gmail.com"

#ENV PORT 443

COPY target/*.jar /opt/app.jar

WORKDIR /opt

ENTRYPOINT exec java $JAVA_OPTS -jar app.jar