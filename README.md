# tf-azure-cosmosdb
This repo spins up a CosmosDB on Azure


## Install tools

* Azure CLI
* Terraform

## Login to Azure

Execute ```az login``` and follow the instructions in your browser or ```az login -h``` to see other ways to login.

## Clone this repo

```
mkaesz@arch ~/workspace> git clone git@github.com:hc-showcase/tf-azure-cosmosdb.git

mkaesz@arch ~/workspace> cd tf-azure-cosmosdb/

```

### Set your Subscription ID

In main.tf you have to specify the subscription ID you want to use.

### Execute Terraform

```
terraform init

terraform apply

```
