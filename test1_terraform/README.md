# SOLUTION 1
This solution create the 3 folders with the number of files that is defined in the variables.tf file.

Commands:

> terraform init
> 
> terraform plan
> 
> terraform apply -auto-approve

# SOLUTION 2
This solution create the folder with the number of files (default: QA / 10), in the command you can define what environment and the message for the txt files and in the {env_name}.tfvars file you can define the number of txt files to create for this environment.

Command:

> terraform init
> 
> terraform plan
> 
> terraform apply -var-file="qa.tfvars" -var="inputText=Este es un mensaje para QA" -auto-approve
> 
> terraform apply -var-file="stg.tfvars" -var="inputText=Este es un mensaje para STG" -auto-approve
> 
> terraform apply -var-file="prod.tfvars" -var="inputText=Este es un mensaje para PROD" -auto-approve
