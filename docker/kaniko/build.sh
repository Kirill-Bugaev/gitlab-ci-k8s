#!/bin/bash

cd ..
docker image build -t docker-registry:5000/kaniko:debug -f kaniko/Dockerfile .
docker push docker-registry:5000/kaniko:debug
