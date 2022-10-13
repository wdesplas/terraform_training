# Declaration of the provider files that will be download in the computer
## Here we will use terraform 0.13+ and the download will be performed during the terraform init phase
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }
  }
}

#Declaration of the provider that we will have to use that named local
provider "local" {
  # Configuration options
}

resource "local_file" "foo" {
    content  = "Hello world !!"
    filename = "/tmp/index.html"
}