# githubactionsdemo
GitHub Actions Demo Updated (03/02/2021)

Requirements

Terraform State Backend on Azure (AC CLI Commands):

az group create --resource-group cjterraformrg --location eastus2
az storage account create --name cjterraformsa --resource-group cjterraformrg --location eastus2 --sku Standard_LRS
az storage container create --name tfstate --account-name cjterraformsa


ServicePrincipal (AZ CLI Commands):

az ad sp create-for-rbac --name <serviceprincipalname> \
                         --role contributor \
                         --scopes /subscriptions/<subscriptionname> \
                         --sdk-auth


Secrets named the following:
CLIENTID
CLIENTSECRET
SUBSCRIPTIONID
TENANTID