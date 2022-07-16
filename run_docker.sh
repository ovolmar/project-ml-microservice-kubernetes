#!/usr/bin/env bash
# Machine Learning Buld 
# Step 1:
# Build image and add a descriptive tag
docker build -t ml-project-flask .
# Step 2: 
# List docker images
docker image ls 
# Step 3: 
# Run flask app
docker run -p 8000:80 ml-project-flask