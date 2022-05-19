#!/bin/bash
echo "............Creating New Docker network ......................"
docker network create Opstree-javaapp
echo "............Building New Docker Image........................"
docker build -t ot-javaapp-img .
echo "............Running Docker compose with and setting up application.............................."
docker-compose up -d 
