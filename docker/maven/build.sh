#!/bin/bash

cd ..
docker image build -t docker-registry:5000/maven:3.3-jdk-8-alpine-scripts -f maven/Dockerfile .
docker push docker-registry:5000/maven:3.3-jdk-8-alpine-scripts
