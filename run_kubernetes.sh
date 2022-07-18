#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
image_name=ml-project-flask
dockerpath=ovolmar/${image_name}
# Step 2:  
# Step 2
# Run the Docker Hub container with kubernetes

kubectl create deployment $image_name --image=${dockerpath} --port=80 

kubectl set image $image_name 
# Step 3:
# List kubernetes pods
kubectl get pods 

mypod=$(kubectl get pods  | grep $image_name  | awk '{print $1}')
# Step 4:
# Forward the container port to a host
sleep 30
kubectl port-forward $mypod  8000:80