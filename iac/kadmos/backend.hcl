terraform {
   backend "local" {
    path = "./terraform.tfstate"
  }
  
 required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.40.0"
    }
  }
  
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }

}