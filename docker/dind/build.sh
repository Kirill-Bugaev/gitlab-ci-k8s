#!/bin/bash

cd ..
docker image build -t docker-registry:5000/docker:dind -f dind/Dockerfile .
docker push docker-registry:5000/docker:dind
