# Kubernetes Setup 

### Requirements:

- **Docker**
- **Kubectl**

## Get Start: 

### Cluster configuration

1. Install nginx Ingress Controller

`` helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx`` 

``helm repo update``

2. Run the nginx-app folder 

`` kubectl apply -f app/namespace.yml `` <br>
`` kubectl apply -f app/deployment.yml ``<br>
`` kubectl apply -f app/service.yml ``<br>
`` kubectl apply -f app/ingress-resource.yml ``<br>
