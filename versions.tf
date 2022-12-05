terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = ">= 1.14.0"
    }
    httpclient = {
      source  = "dmachard/http-client"
      version = ">= 0.0.3"
    }
  }
}