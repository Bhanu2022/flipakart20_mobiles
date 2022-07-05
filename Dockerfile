FROM maven:3.6.0-jdk-11 as build
COPY pom.xml pom.xml
COPY src src
RUN mvn install -q

FROM azul/zulu-openjdk-alpine:11.0.1
COPY --from=build /target/mobiles.jar /mobiles.jar
ENTRYPOINT java -server -XX:+UseNUMA -jar /mobiles.jar

#NOTE: you should replace 'latest' with the specific version you want
#docker build -t mobiles:latest .
#docker history
#docker run -d --name mobiles-instance -p 8080:8080 -p 8098:8098 mobiles:latest

