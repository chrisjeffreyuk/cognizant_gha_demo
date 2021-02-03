variable "subscription_id" { 
  description = "Subscription ID Details"
  default = ""
}

variable "client_id" {
  description = "The Client ID Details"
  default = ""
}

variable "client_secret" {
  description = "The Client Secret Details - This is being supplied in the GitHub Secrets"
  default = ""
}

variable "tenant_id" {
  description = "The Tenant ID Details"
  default = ""
}

variable "prefix" {
  description = "The prefix used for all resources in this example"
  default = "ghatfdemo"
}

variable "location" {
  description = "The Azure location where all resources in this example should be created"
  default = "eastus2"
}
