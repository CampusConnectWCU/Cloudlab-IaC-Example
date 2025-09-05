terraform {
  required_providers {
    cloudlab = {
      source = "ucy-coast/cloudlab"
      version = "2.1.0"
    }
  }
}

provider "cloudlab" {
  credentials_path = "./cloudlab_decrypted.pem"
}

