terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.6.1"
    }
  }
}

provider "okta" {
  org_name = var.org_name
  base_url = var.base_url
  api_token = var.api_token
}

variable "org_name" {}
variable "base_url" {}
variable "api_token" {}


resource "okta_group" "example" {
  name        = "new-1"
  description = "My Example Group"
}

resource "okta_user" "iam" {
  first_name = var.firstname
  last_name  = var.lastname
  login      = var.mail
  email      = var.mail
  status     = "ACTIVE"
}

variable "firstname" {
  type = string
}
variable "lastname" {
  type = string
}
variable "mail" {
  type = string
}