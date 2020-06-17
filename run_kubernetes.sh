#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=edunicastro/microservice_api
podname=api-container-pod

# Step 2
# Run the Docker Hub container with kubernetes
# See some refs on https://github.com/udacity-devops/kubernetes_exercise_debug_pod/blob/master/step_by_step.txt
kubectl run $podname --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $podname 8000:80
