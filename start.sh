#!/bin/sh

pkill java
rm -rf api
git clone https://github.com/brunogenerali/Challenge_DevOps-2.git api && cd api
mvn clean package -DskipTests
java -Dspring.profiles.active=prod -DDATASOURCE_URL=jdbc:mysql://localhost/vollmed_api -DDATASOURCE_USERNAME=root -DDATASOURCE_PASSWORD=root -jar target/api-0.0.1-SNAPSHOT.jar &
