## Product Recommendation Microservice
# Overview
This repository contains a simple product recommendation microservice developed in Python using the Flask framework. It is designed for containerization and deployment within a scalable architecture on AWS.

## Key Features
# Containerization
The application is packaged using Docker, ensuring consistency across environments.
# Kubernetes Deployment
Utilizes AWS Load Balancer (ALB) for routing traffic and includes configuration for karpenter and HPA auto-scaling.
# Workflow Integration
Pull Request Workflow: This workflow facilitates the development lifecycle by performing linting, testing, building the Docker image, and scanning for vulnerabilities using Trivy. It ensures code quality and security before merging changes.
Merge Workflow: Upon merging, this workflow builds the Docker image, publishes it to the Amazon ECR (platform-images repo on us-west-1), and applies pre-defined Kubernetes manifests for deployment. This streamlines the deployment process and ensures that the latest changes are immediately available.

## Improvements
I would prefer that Continuous Delivery is not done from the service repository, but is "picked up" by an external tool upon image promotion. IE, argoCD image update detects that a tag has been updated and will roll out to the appropriate environments accordingly