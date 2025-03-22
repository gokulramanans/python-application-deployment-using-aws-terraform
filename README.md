# python-application-deployment-using-aws-terraform

# AWS Cloud Architecture with Terraform: Python Flask Application Deployment

This repository contains Terraform code to deploy a Python Flask application on AWS Cloud, based on the architecture depicted in the provided diagram.

## Overview

This architecture deploys a Python Flask application on AWS Cloud using Terraform. It includes a Virtual Private Cloud (VPC), multiple subnets, an EC2 instance, an Internet Gateway, Route Tables, and Security Groups.

**Key Components (Managed by Terraform):**

* **AWS Cloud:** The underlying AWS infrastructure.
* **VPC (Virtual Private Cloud):** A logically isolated network.
* **Subnets:** Multiple subnets for network segmentation.
* **EC2 (Elastic Compute Cloud):** A virtual server hosting the Flask application.
* **Internet Gateway:** Enables internet connectivity.
* **Route Tables & Associations:** Configures routing rules.
* **Security Groups:** Controls network traffic to the EC2 instance.

**Application:**

* **Python Flask Application:** The web application deployed on the EC2 instance.

## Architecture Diagram

![image](https://github.com/user-attachments/assets/cd4eafc3-24da-49cf-a8e2-9a11e25917e8)


## Terraform Files

The Terraform code is organized into the following files:

* **`provider.tf`:** Configures the AWS provider and region.
* **`terraform.tfvars`:** Defines variable values for customization.
* **`variables.tf`:** Declares input variables.
* **`vpc.tf`:** Defines the Virtual Private Cloud resource.
* **`subnet.tf`:** Defines the subnets within the VPC.
* **`security-group.tf`:** Configures security groups for the EC2 instance.
* **`route-table.tf`:** Defines route tables for the VPC.
* **`route-table-association.tf`:** Associates subnets with route tables.
* **`internetgateway.tf`:** Creates the Internet Gateway and attaches it to the VPC.
* **`ec2.tf`:** Defines the EC2 instance and its configuration.

## Deployment Steps

1.  **Prerequisites:**
    * Install Terraform.
    * Configure AWS credentials (using `aws configure` or environment variables).

2.  **Clone Repository:** Clone this repository to your local machine.

3.  **Customize Variables:**
    * Modify `terraform.tfvars` to customize the deployment (e.g., region, VPC CIDR, subnet CIDRs, instance type, AMI ID).
    * If needed, adjust variables in `variables.tf`.

4.  **Initialize Terraform:** Navigate to the repository directory and run `terraform init`.

5.  **Apply Terraform Configuration:** Run `terraform apply` and confirm the deployment.

6.  **Access Application:** Once the deployment is complete, the public IP of the EC2 instance will be displayed as an output. Access the Flask application using this IP address in your web browser.

7.  **Destroy Infrastructure:** To remove the deployed infrastructure, run `terraform destroy`.

## Technologies Used

* AWS Cloud
* VPC
* EC2
* Terraform
* Python
* Flask

## Notes

* This Terraform code provides a basic deployment of the architecture. You can further customize it with additional resources and configurations.
* Ensure your AWS credentials have the necessary permissions to create the resources.

## Contributing

Contributions to this repository are welcome. Please feel free to submit pull requests or open issues for any improvements or suggestions.
