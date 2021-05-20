#!/bin/bash

git submodule foreach --recursive git pull origin main
docker-compose up
