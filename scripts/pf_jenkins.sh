#!/bin/bash

git submodule foreach --recursive git pull origin main
docker build -t jenkins:jcac .
docker run -it --env-file .secrets --name jenkins --rm -p 8080:8080 jenkins:jcac
