# Terraform learning using Azure subscription and Terraform Testing

# Building CI/CD pipeline leveraging github actions to learn Terraform and Terraform Unit Testing. This pipeline is strictly for my own personal learning and growith. Pipeline leverages github actions to test and deploy terraform configurations into personal azure subscription. It will contain random resources I am tinkering with and exploring throughout its existance. Each resource is cleaned up nightly by an automation runbook job located in my personal azure subscription. 

In this project I plan to deploy various IaC solutions via Terraform and then test those configurations against the Terraform test famework that became available in v 1.6.5. 


# Current Configurations

* Github workflows folder containing terraform.yml. This file is used to checkout github repo, install latest tf cli using tf api token, perform terraform init, fmt, plan, validate, and apply. Apply is locked behind approval. 
* Main.tf with configurations for resource group, providers, and tf backend workspace, and storage account. 



# Incoming Enhancements

* terraform unit testing for various resources
* tf modules calls
