# AWS DevOps Infrastructure Automation & Monitoring Platform

## 📌 Project Overview

This project demonstrates an end-to-end DevOps workflow for deploying,
configuring, containerizing, and monitoring an application environment
on AWS.

The infrastructure is provisioned using Terraform, server configuration
is automated using Ansible, the web application is deployed using Docker
and Nginx, and infrastructure monitoring is implemented using
Prometheus, Node Exporter, and Grafana.

## 🏗️ Architecture

AWS VPC
│
├── Web Server - Ubuntu EC2
│   ├── Docker
│   ├── Nginx
│   └── Node Exporter
│
└── Monitoring Server - Ubuntu EC2
    ├── Prometheus
    └── Grafana

## 🛠️ Technologies Used

- AWS
- Terraform
- Ansible
- Ubuntu Linux
- Docker
- Nginx
- Prometheus
- Node Exporter
- Grafana
- Git & GitHub
- SSH

## 🚀 Implementation

### 1. Infrastructure Provisioning

Terraform was used to provision:

- AWS VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Groups
- EC2 Instances
- AWS Key Pair

### 2. Configuration Management

Ansible was used to automate:

- Docker installation
- Docker configuration
- Nginx deployment
- Node Exporter installation
- Prometheus installation
- Grafana installation

### 3. Application Deployment

Nginx was deployed inside a Docker container.

Container:

devops-nginx

Port:

80

### 4. Monitoring

Node Exporter collects Linux system metrics from the web server.

Prometheus collects the metrics from:

10.0.1.153:9100

Grafana connects to Prometheus and provides visualization dashboards.

## 📊 Monitoring Metrics

The monitoring platform provides visibility into:

- CPU utilization
- Memory utilization
- Disk utilization
- Network traffic
- System load
- Server uptime
- Filesystem usage

## 🔐 Security

- SSH access configured using SSH keys
- Separate security groups for infrastructure components
- Prometheus and Grafana access restricted through security group rules
- Monitoring communication uses private VPC IP addresses
- Sensitive credentials and private keys are excluded from Git

## 🎯 Key DevOps Concepts Demonstrated

- Infrastructure as Code
- Configuration Management
- Cloud Infrastructure
- Containerization
- Continuous Monitoring
- Linux Administration
- AWS Networking
- Security Groups
- Automation using Ansible
- Infrastructure monitoring
- Git version control

## 📸 Screenshots

Project screenshots are available in the `screenshots/` directory.

## 👨‍💻 Author

Pazhani
