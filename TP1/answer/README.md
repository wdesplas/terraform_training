# SOLUTION 
## Terraform installation :
### cf : https://learn.hashicorp.com/tutorials/terraform/install-cli

## Create a terraform template that create a file named index.html that contains the text "Hello world !!"
### Steps : 
1. Create a file name tp1.tf that contains the following content: cf labs/tp1.tf
2. Run terraform init
3. Run terraform plan
4. Run terraform apply

### Check the content is available in /tmp/index.html
1. cat /tmp/index.html
2. The content must be "Hello world !!"

### Destroy the content
1. Run terraform destroy

### Check the ressource is not available in /tmp/index.html
1. ls -1 /tmp/index.html
2. No content must be present