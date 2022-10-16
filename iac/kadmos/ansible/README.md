### Ansible Playbooks

The Playbooks here were designed to run over a ubuntu machine and perform the following opperations:

- Install Apache2 Server
- Install and Enable Apache2 modules
- Configure Apache Server

## Instructions

### Get VM Address

At terraform deployment folder get the VM ip adress:

``$ python3 ansible-config.py``

The script above will get the IP from the VM created (via output) and add it to our hosts file

### Running ansible

To run the ansible is simple:

``ansible-playbook apache-playbook.yml -i hosts.ini``

### Configure as ReverseProxy for k8s

***Just run after having ingress configured***

You can simply use this command

``ansible-playbook reverse-proxy.yml -i hosts.ini``
