[![edumueller](https://circleci.com/gh/edumueller/project_kubernetes_microservices.svg?style=svg)](https://circleci.com/gh/edumueller/workflows/project_kubernetes_microservices/tree/circleci-project-setup)

## Project Overview

This project's goal is to operationalize a Machine Learning Microservice API using [kubernetes](https://kubernetes.io/).

Our Python Flash app serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

We use a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The data used was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

---

## Environment Setup (only necessary to run the Standalone app)

* Create a virtualenv and activate it by running `make setup` and then `source ~/.devops/bin/activate`
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

## Project files

* ./Dockerfile - Necessary steps to build the docker container
* ./Makefile - Commands you can run using `make <command>`
* ./app.py - Main application
* ./make_prediction.sh - Script that sends a curl request with json payload to port 8000
* ./requirements.txt - File containing the project required libraries, installed using pip
* ./run_docker.sh - Script that builds, tags and runs image locally using docker on port 8000
* ./upload_docker.sh - Uploads the local image to docker hub
* ./run_kubernetes.sh - Runs a Docker Hub container using kubernetes. Wait some seconds and run again to forward port 8000.

