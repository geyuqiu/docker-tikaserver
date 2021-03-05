FROM openjdk:8-jdk-alpine
WORKDIR /
VOLUME /tmp
ARG JAR_FILE=tika-server-1.22.jar
COPY ${JAR_FILE} app.jar

EXPOSE 9998
ENTRYPOINT ["java -jar /app.jar --host=0.0.0.0 --port=$PORT"]
# ENTRYPOINT java -jar /app.jar --host=0.0.0.0 --port=$PORT