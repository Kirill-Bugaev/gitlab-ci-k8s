#!/bin/bash

docker image build -t docker-registry:5000/lachlanevenson/k8s-kubectl:latest .
docker push docker-registry:5000/lachlanevenson/k8s-kubectl:latest
