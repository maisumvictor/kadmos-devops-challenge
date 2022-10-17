# Kadmos Challenge 

## Index: 


**Part 1: Kubernetes**
- Kubernetes implementation
- Kubernetes Deployment 
- Deployment script
  
**Part 2: Virtual Machine**
- Resource Provisioning with Terraform
- Management Configuration with Ansible
- DDoS attack protection 


## Tooling decision: 

**Kubernetes** <br>
In order to run the kubernetes I choose to use GKE. But it possible to run over kind. 
The config file for kind can be found here [kubernetes/cluster-config.yaml]

**Google Cloud Cli a.k.a. GCloud** 
- Google Cloud SDK 405.0.0
- bq 2.0.78
- core 2022.09.30
- gsutil 5.14

**Terraform**
--version v1.3.2

Providers: 
- hashicorp/google version 4.40.0
- hashicorp/tls version 3.1.0

**Ansible**:
--version core 2.13.5

**Python3**:
--version 3.10.8

**Perl**:
--version 5.36.0



**Enabling GCP service API** 

``gcloud services enable container.googleapis.com``
<br>
``gcloud services enable compute.googleapis.com``


