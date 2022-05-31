1. git clone .. 
2. cd repo
3. cp secret.tfvars.example secret.tfvars
4. fill all required fields in the secret.tfvars with your settings
5. terraform init
6. terraform plan -var-file="secret.tfvars"
7. terraform apply -var-file="secret.tfvars"
8. PROFIT!!!