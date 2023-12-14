# Terraform learning using Azure subscription and Terraform Testing

# Building CI/CD pipeline leveraging github actions to learn Terraform and Terraform Unit Testing. This pipeline is strictly for my own personal learning and growith. Pipeline leverages github actions to test and deploy terraform configurations into personal azure subscription.

In this project I plan to deploy various IaC solutions via Terraform and then test those configurations against the Terraform test famework that became available in v 1.6.5. I may include golang testing further down the road as well. 


# Current Configurations

* Github workflows folder containing terraform.yml. This file is used to checkout github repo, Install latest tf cli using tf api token, perform terraform init, fmt, plan, and apply
* Main.tf with configurations for resource group, providers, and tf backend workspace.
* Variables.tf


# Incoming Enhancements

* terraform validate added to workflows
* required approvers
* storage account deployment
* terraform unit testing for storage account configurations
* tf modules
