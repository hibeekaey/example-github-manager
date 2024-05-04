terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.1"
    }
  }
}

resource "random_pet" "repository_prefix" {
  length = 2
}

output "repository_prefix" {
  value = random_pet.repository_prefix.id
}
