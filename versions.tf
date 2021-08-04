terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.78.0"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.78.0"
    }
  }

  required_version = "~> 1.0.0"
}
