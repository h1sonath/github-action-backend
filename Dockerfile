FROM maven:3.8.3-openjdk-17 as build
WORKDIR ./src
COPY .. .
RUN mvn install
