#!/bin/sh

pkill java
rm -rf api
git clone https://github.com/brunogenerali/Challenge_DevOps-2.git api && cd api
mvn clean package
nohup java -Dspring.profiles.active=prod -DDATASOURCE_URL=jdbc:mysql://172.31.85.240/vollmed_api -DDATASOURCE_USERNAME=root -DDATASOURCE_PASSWORD=root -jar target/api-0.0.1-SNAPSHOT.jar > out.txt 2>&1 &
