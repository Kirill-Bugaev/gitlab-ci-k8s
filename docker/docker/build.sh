#!/bin/bash

cd ..
docker image build -t docker-registry:5000/docker:latest -f docker/Dockerfile .
docker push docker-registry:5000/docker:latest
