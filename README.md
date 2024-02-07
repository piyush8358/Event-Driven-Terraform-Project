# DevOps Automation with Terraform, Docker, and AWS

### Project Explanation
https://github.com/piyush8358/Event-Driven-Terraform-Project/assets/96904569/08c73333-7d36-4291-bb67-fe63829fd158

## Introduction

Welcome to our DevOps Automation Project! In this guide, we will explore how to revolutionize infrastructure provisioning and application deployment using Terraform, Docker, and AWS. By following these comprehensive steps, you will be equipped to automate your infrastructure and leverage the power of cloud automation effectively.

## Getting Started

To begin your journey into infrastructure automation, ensure Terraform is installed on your system. Follow the official instructions provided by HashiCorp [here](https://www.terraform.io/downloads.html). Once installed, you'll be ready to streamline your infrastructure provisioning process.

## Key Steps

### 1. Install Terraform on Windows:

- Download Terraform from the official website and extract the zip archive.
- Optionally, move the Terraform executable to a directory in your system's PATH for easier access.
- Verify the installation by running `terraform -version` in Command Prompt or PowerShell.

### 2. Configure Terraform Environment:

- Create a working directory for your Terraform projects.
- Optionally, set up environment variables to manage configurations across projects.
- Initialize your Terraform working directory with `terraform init`.
- Write Terraform configuration files (.tf) to define your infrastructure resources.

### 3. Deploy Infrastructure on AWS:

- Utilize Terraform to provision EC2 instances and attach EBS volumes for persistent storage.
- Transfer local project files to the cloud environment for accessibility and scalability.
- Install Docker on EC2 instances and launch CentOS Docker containers.
- Attach frontend and backend applications to Docker containers.
- Install Apache HTTP Server (httpd) inside Docker containers to host your applications.

## Conclusion

By automating these steps with Terraform, Docker, and AWS, you can efficiently deploy and manage your applications, allowing you to focus on innovation and development rather than manual infrastructure tasks. This project represents a paradigm shift in infrastructure management practices, offering scalability, reliability, and efficiency in deploying event-driven architectures on AWS. For further exploration and advanced features, refer to the Terraform documentation and best practices. Happy automating!
