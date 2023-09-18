terraform {
  required_version = ">=v1.4.6"

  backend "s3" {
    bucket = "eu-de-digitalx-dev-tfstate"
    kms_key_id = "arn:aws:kms:eu-de:45d601c35d8e4400ac11bce9d8eae5d1:key/8aaa8a7f-0959-4528-b8b0-2a69502f5c36"
    key = "tfstate-kubernetes"
    region = "eu-de"
    endpoint = "obs.eu-de.otc.t-systems.com"
    encrypt = true
    skip_region_validation = true
    skip_credentials_validation = true
  }

  required_providers {
    opentelekomcloud = {
      source  = "opentelekomcloud/opentelekomcloud"
      version = ">=1.35.6"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.16.0"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}
