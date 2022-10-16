# Kubernetes Setup 

### Requirements:

- **Docker**: version
- **Kubectl**: version

## Get Start: 

### Cluster configuration

1. Install nginx Ingress

`` kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml ``

2. Run the nginx-app folder 

`` kubectl apply -f nginx-app/namespace.yml ``
`` kubectl apply -f nginx-app/deployment.yml ``
`` kubectl apply -f nginx-app/service.yml ``
`` kubectl apply -f nginx-app/ingress.yml ``
