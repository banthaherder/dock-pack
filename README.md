# Dock-Pack
Packer usng a Docker builder and Ansible provisioner to craft Docker images and push them up.

## Project Structure
```
├── Makefile                            <----- File for quick use.
├── README.md                           <----- This file.
├── ansible                             <----- Directory containing the playbook and roles for setting up nginx.
│   ├── provision.yaml                  <----- Playbook called during provisioning.
│   └── roles                           <----- Directory containing the roles for the provisioning playbook.
│       ├── centos_install              <----- Directory containing tasks specific to CentOS.
│       │   └── tasks                   <----- Directory for CentOS tasks.
│       │       └── main.yaml           <----- Tasks file for CentOS tasks.
│       ├── common                      <----- Directory containing common tasks for configuring Nginx.
│       │   ├── files                   <----- Directory containing files for configuring Nginx.
│       │   │   ├── nginx.conf          <----- Nginx configuration file.
│       │   │   └── banthaherder.com    <----- Default site config.
│       │   └── tasks                   <----- Directory for common tasks.
│       │       └── main.yaml           <----- Tasks file for common tasks.
│       └── ubuntu_install              <----- Directory containing tasks specific to Ubuntu.
│           └── tasks                   <----- Directory for Ubuntu tasks.
│               └── main.yaml           <----- Tasks file for Ubuntu tasks.
├── index.html                          <----- Demo html file.
└── packer.json                         <----- Packer configuration file.
```

## Setup
1. Ensure packer, docker, python, and ansible are installed on your dev machine
    * Packer ---> see https://packer.io/intro/getting-started/install.html
    * Docker ---> see https://docs.docker.com/docker-for-mac/install/
    * Python ---> see https://realpython.com/installing-python/
    * Ansible ---> see https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

2. Build by running: `make build-centos` or `make build-ubuntu`
3. Run the demo: `make up-centos` or `make up-ubuntu`
4. Stop the demo: `make down-centos` or `make down-ubuntu`
