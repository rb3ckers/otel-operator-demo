#!/bin/bash

docker build -t ghcr.io/rb3ckers/dice-roller-app:python .
docker push ghcr.io/rb3ckers/dice-roller-app:python