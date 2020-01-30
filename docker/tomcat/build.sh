#!/bin/bash

docker image build -t docker-registry:5000/tomcat:9.0.30-jdk8-openjdk-slim .
docker push docker-registry:5000/tomcat:9.0.30-jdk8-openjdk-slim
