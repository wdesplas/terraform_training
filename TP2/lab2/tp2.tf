# Declaration of the provider files that will be download in the computer
## Here we will use terraform 0.13+ and the download will be performed during the terraform init phase
terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

#Declaration of the provider that we will have to use that named local
provider "local" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

# Random ID used as a user
resource "random_id" "identification" {
  keepers = {
    # Generate a new id each time we switch the name
    name = var.name
  }
  byte_length = 8
}

# Variables
variable "name" {
    description = "The name a user"
}

resource "local_file" "foo" {
    content  = "Hello ${random_id.identification.keepers.name} identified by ${random_id.identification.id}!!"
    filename = "/tmp/index.html"
}

